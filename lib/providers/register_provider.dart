import 'dart:ffi';
import 'dart:io';

import 'package:ciyu/providers/dio_provider.dart';
import 'package:ciyu_api/ciyu_api.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final registerStatusProvider = StateNotifierProvider<RegisterNotifier, RegisterStatus>(
        (ref) => RegisterNotifier(ref));

enum RegisterStatus { initial, loading, success, failure }

class RegisterNotifier extends StateNotifier<RegisterStatus> {
  Ref ref;

  RegisterNotifier(this.ref) : super(RegisterStatus.initial);

  Future<void> register(String phone, String password) async {
    final api = ref.watch(apiProvider);
    state = RegisterStatus.loading;
    try {
      Response response = await api.getUserControllerApi().register(
        registerDto: RegisterDto((registerDtoBuilder) => registerDtoBuilder
          ..phone = phone
          ..password = password),
      );
      if (response.statusCode == HttpStatus.ok) {
        state = RegisterStatus.success;
      } else {
        state = RegisterStatus.failure;
      }
    } catch (exception) {
      state = RegisterStatus.failure;
    }
  }
}
