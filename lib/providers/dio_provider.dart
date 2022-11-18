import 'dart:io';

import 'package:ciyu_api/ciyu_api.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:rest_api_client/implementations/auth_handler.dart';
import 'package:rest_api_client/implementations/cache_handler.dart';
import 'package:rest_api_client/implementations/exception_handler.dart';
import 'package:rest_api_client/options/auth_options.dart';
import 'package:rest_api_client/options/exception_options.dart';
import 'package:rest_api_client/options/logging_options.dart';
import 'package:rest_api_client/options/rest_api_client_options.dart';

// final optionsProvider =
//     Provider((ref) => RestApiClientOptions(baseUrl: r'http://ghttlab.com:44333'));
final optionsProvider =
    Provider((ref) => RestApiClientOptions(baseUrl: r'http://localhost:44333'));

final loggingOptionsProvider = Provider((ref) => const LoggingOptions());

final authOptionsProvider = Provider((ref) => AuthOptions(
      refreshTokenEndpoint: '/api/v1/tokens/refresh',
      refreshTokenParameterName: 'refreshToken',
      // This method is called on successfull call to refreshTokenEndpoint
      // Provides a way to get a jwt from response, much like
      // resolveValidationErrorsMap callback
      resolveJwt: (response) => response.data['accessToken'],
      // Much like resolveJwt, this method is used to resolve
      // refresh token from response
      resolveRefreshToken: (response) => response.data['refreshToken'],
    ));

final exceptionOptionsProvider = Provider((ref) => ExceptionOptions());

final dioProvider = Provider((ref) {
  RestApiClientOptions options = ref.watch(optionsProvider);
  return Dio(
    BaseOptions(
      baseUrl: options.baseUrl,
      connectTimeout: 5000,
      receiveTimeout: 10000, //3000
    ),
  );
});

final authHandlerProvider = Provider((ref) {
  Dio dio = ref.watch(dioProvider);
  RestApiClientOptions options = ref.watch(optionsProvider);
  ExceptionOptions exceptionOptions = ref.watch(exceptionOptionsProvider);
  AuthOptions authOptions = ref.watch(authOptionsProvider);
  LoggingOptions loggingOptions = ref.watch(loggingOptionsProvider);
  final authHandler = AuthHandler(
    dio: dio,
    options: options,
    exceptionOptions: exceptionOptions,
    authOptions: authOptions,
    loggingOptions: loggingOptions,
  );
  authHandler.init().then((_) async {
    return ref
      .read(isAuthorizedProvider.notifier)
      .state = await authHandler.isAuthorized();
  });
  return authHandler;
});

final isAuthorizedProvider = StateProvider<bool?>((ref) => null);

final exceptionHandlerProvider = Provider((ref) {
  ExceptionOptions exceptionOptions = ref.watch(exceptionOptionsProvider);
  return ExceptionHandler(
    exceptionOptions: exceptionOptions,
  );
});

final cacheHandlerProvider = Provider((ref) {
  LoggingOptions loggingOptions = ref.watch(loggingOptionsProvider);
  final cacheHandler = CacheHandler(
    loggingOptions: loggingOptions,
  );
  cacheHandler.init();
  return cacheHandler;
});

final apiProvider = Provider((ref) {
  RestApiClientOptions options = ref.watch(optionsProvider);
  ExceptionOptions exceptionOptions = ref.watch(exceptionOptionsProvider);
  LoggingOptions loggingOptions = ref.watch(loggingOptionsProvider);
  AuthHandler authHandler = ref.watch(authHandlerProvider);
  ExceptionHandler exceptionHandler = ref.watch(exceptionHandlerProvider);
  Dio dio = ref.watch(dioProvider);
  // configure logging
  if (loggingOptions.logNetworkTraffic) {
    dio.interceptors.add(
      PrettyDioLogger(
        responseBody: loggingOptions.responseBody,
        requestBody: loggingOptions.requestBody,
        requestHeader: loggingOptions.requestHeader,
        request: loggingOptions.request,
        responseHeader: loggingOptions.responseHeader,
        compact: loggingOptions.compact,
        error: loggingOptions.error,
      ),
    );
  }
  // add interceptors
  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (RequestOptions options, handler) {
        options.extra.addAll({
          'showInternalServerErrors': exceptionOptions.showInternalServerErrors
        });
        options.extra
            .addAll({'showNetworkErrors': exceptionOptions.showNetworkErrors});
        options.extra.addAll(
            {'showValidationErrors': exceptionOptions.showValidationErrors});
        return handler.next(options);
      },
      onResponse: (Response response, handler) {
        exceptionOptions.reset();
        return handler.next(response);
      },
      onError: (DioError error, handler) async {
        if (authHandler.usesAutorization &&
            error.response?.statusCode == HttpStatus.unauthorized) {
          try {
            return handler
                .resolve(await authHandler.refreshTokenCallback(error));
          } catch (e) {
            print(e);
          }
        }
        await exceptionHandler.handle(error, error.requestOptions.extra);
        return handler.next(error);
      },
    ),
  );
  // configure certificate override
  if (options.overrideBadCertificate && !kIsWeb) {
    (dio.httpClientAdapter as dynamic).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
  }
  return CiyuApi(
    dio: dio,
  );
});

//         PrettyDioLogger(
//           responseBody: true,
//           requestBody: true,
//           requestHeader: true,
//           request: true,
//           responseHeader: true,
//           compact: true,
//           error: true,
//         ),

//               connectTimeout: 5000,
//               receiveTimeout: 10000,
//               extra: <String, List<Map<String, String>>>{
//                 "secure": [
//                   <String, String>{
//                     "type": "http",
//                     "scheme": "bearer",
//                   },
//                 ]
//               },
