import 'package:ciyu/pages/login_page.dart';
import 'package:ciyu/pages/recommend_page.dart';
import 'package:ciyu/providers/register_provider.dart';
import 'package:ciyu/styles/theme.dart';
import 'package:ciyu_api/ciyu_api.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RegisterPage extends HookConsumerWidget {
  const RegisterPage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const RegisterPage());
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final phoneController = useTextEditingController();
    final passwordController = useTextEditingController();
    ref.listen(registerStatusProvider, (previous, next) {
      if (next == RegisterStatus.success) {
        Navigator.of(context)
            .pushAndRemoveUntil(LoginPage.route(), (route) => false);
      }
    });
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        heightFactor: 1,
        child: Padding(
          padding: const EdgeInsets.all(48.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 64),
                    Text(
                      "注册新账号",
                      style: textTheme.displaySmall,
                    ),
                    SizedBox(height: 48),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "手机号",
                      ),
                      controller: phoneController,
                    ),
                    SizedBox(height: 16),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "密码",
                      ),
                      controller: passwordController,
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: ref.watch(registerStatusProvider) ==
                                    RegisterStatus.loading
                                ? () {}
                                : () => ref
                                    .watch(registerStatusProvider.notifier)
                                    .register(phoneController.text,
                                        passwordController.text),
                            child: ref.watch(registerStatusProvider) ==
                                    RegisterStatus.loading
                                ? SizedBox.square(
                                    dimension: 24,
                                    child: CircularProgressIndicator(
                                        color: Colors.white),
                                  )
                                : Text("注册"),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              TextButton(
                  onPressed: () => Navigator.of(context)
                      .pushAndRemoveUntil(LoginPage.route(), (route) => false),
                  child: Text("已有账号，立即登录", style: textTheme.bodyMedium)),
            ],
          ),
        ),
      ),
    );
  }
}
