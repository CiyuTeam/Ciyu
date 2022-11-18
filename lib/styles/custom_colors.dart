import 'package:flutter/material.dart';

class CustomColors{
  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);
  static const Color white70 = Color(0xB3FFFFFF);
  static const Color white60 = Color(0x99FFFFFF);
  static const Color white54 = Color(0x8AFFFFFF);
  static const Color white38 = Color(0x62FFFFFF);
  static const Color white30 = Color(0x4DFFFFFF);
  static const Color white24 = Color(0x3DFFFFFF);
  static const Color white12 = Color(0x1FFFFFFF);
  static const Color white10 = Color(0x1AFFFFFF);
  static const Color grey = Color(0xFF686868);
  static const Color lightGrey = Color(0xFFACADAF);
  static const Color normal = Color(0xFF454545);
  static const Color card = Color(0xFFF4F4F4);
  static const Color qr = Color(0xFF3C5F8D);
  static const MaterialColor vi = MaterialColor(
    _viPrimaryValue,
    <int, Color>{
      50: Color(_viPrimaryValue),
      100: Color(_viPrimaryValue),
      200: Color(_viPrimaryValue),
      300: Color(_viPrimaryValue),
      400: Color(_viPrimaryValue),
      500: Color(_viPrimaryValue),
      600: Color(_viPrimaryValue),
      700: Color(_viPrimaryValue),
      800: Color(_viPrimaryValue),
      900: Color(_viPrimaryValue),

    },
  );
  static const int _viPrimaryValue = 0xFF000000;
  static const Color transparent = Colors.transparent;
  static const Color divider = Color(0xFFBCBCBC);

}

