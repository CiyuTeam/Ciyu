import 'dart:ffi';
import 'dart:io';

import 'package:ciyu/providers/dio_provider.dart';
import 'package:ciyu_api/ciyu_api.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jverify/jverify.dart';

final loginStatusProvider = StateNotifierProvider<LoginNotifier, LoginStatus>(
    (ref) => LoginNotifier(ref));

enum LoginStatus { initial, loading, success, failure }

class LoginNotifier extends StateNotifier<LoginStatus> {
  Ref ref;

  LoginNotifier(this.ref) : super(LoginStatus.initial);

  Future<void> login(String phone, String password) async {
    final api = ref.watch(apiProvider);
    final authHandler = ref.watch(authHandlerProvider);
    state = LoginStatus.loading;
    try {
      Response<TokenDto> response = await api
          .getTokenControllerApi()
          .login(phone: phone, password: password);
      if (response.statusCode == HttpStatus.ok &&
          response.data != null &&
          response.data!.accessToken != null) {
        authHandler.authorize(jwt: response.data!.accessToken!, refreshToken: response.data!.refreshToken!);
        state = LoginStatus.success;
      } else {
        state = LoginStatus.failure;
      }
    } catch (exception) {
      state = LoginStatus.failure;
    }
  }
}
