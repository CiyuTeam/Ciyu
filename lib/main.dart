import 'dart:async';
import 'dart:io';
import 'package:ciyu/load.dart';
import 'package:ciyu/pages/article_page.dart';
import 'package:ciyu/pages/login_page.dart';
import 'package:ciyu/pages/recommend_page.dart';
import 'package:ciyu/providers/dio_provider.dart';
import 'package:ciyu/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jverify/jverify.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: '词遇',
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        theme: theme,
        darkTheme: darkTheme,
        home: Consumer(builder: (context, ref, child) {
          bool? isAuthorized = ref.watch(isAuthorizedProvider);
          ref.watch(authHandlerProvider);
          return isAuthorized == null
              ? Center(child: CircularProgressIndicator(color: Colors.white,))
              : (isAuthorized ? RecommendPage() : LoginPage());
        }),
      ),
    );
  }
}
