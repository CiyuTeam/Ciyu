import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ciyu/styles/custom_colors.dart';
import 'package:ciyu/utils/no_splash_factory.dart';

//TODO: 修改命名
const kAppBarShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.only(
    bottomLeft: Radius.circular(32),
    bottomRight: Radius.circular(32),
  ),
);

const kDark = Color(0xFF333333);
const kLight = Color(0xFFFDFDFD);
const kOrange = Color(0xFFFB8C00);

const kBackgroundLight = Color(0xFFF2F3F7);
const kBackgroundDark = Color(0xFF2A2A2A);

const kIconDark = Color(0xFF666666);
const kIconLight = Color(0xFFFBFBFB);

const kDividerDark = Color(0xFF444444);
const kDividerLight = Color(0xFFFFFFFF);

const kTextDark = Color(0xFF333333);
const kTextDarker = Color(0xFF17262A);

const kTextLight = Color(0xFFEEEEEE);
const kTextLighter = Color(0xFFFBFBFB);

CustomTextTheme get textTheme {
  return const CustomTextTheme(
    // headline1: TextStyle(),
    // headline2: TextStyle(),
    // headline3: TextStyle(),
    // headline4: TextStyle(),
    // headline5: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
    // headline6: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
    // paragraph: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
    // paragraphBold: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    // subtitle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
    // normal: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
    // normalSmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
    // normalSmallBold: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
    // normalSmallHeavy: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
    // normalBold: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    // normalBig: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
    // small: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
    // smallBold: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
    // tiny: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
    // tinyBold: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
    // bodyText1: TextStyle(fontSize: 16),
    // bodyText2: TextStyle(fontSize: 14),
    // subtitle1: TextStyle(fontSize: 12),
    // caption: TextStyle(fontWeight: FontWeight.w700),
    // button: TextStyle(),
    // subtitle2: TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
    displayLarge: TextStyle(
      fontSize: 45.0,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.25,
      height: 1.12,
    ),
    displayMedium: TextStyle(
      fontSize: 36.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      height: 1.16,
    ),
    displaySmall: TextStyle(
      fontSize: 28.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      height: 1.22,
    ),
    headlineLarge: TextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      height: 1.25,
    ),
    headlineMedium: TextStyle(
      fontSize: 28.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      height: 1.29,
    ),
    headlineSmall: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      height: 1.33,
    ),
    titleLarge: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      height: 1.27,
    ),
    titleMedium: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
      height: 1.20,
    ),
    titleSmall: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      height: 1.43,
    ),
    labelLarge: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      height: 1.43,
    ),
    labelMedium: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      height: 1.33,
    ),
    labelSmall: TextStyle(
      fontSize: 11.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      height: 1.45,
    ),
    bodyLarge: TextStyle(
      fontSize: 22.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
      height: 1.50,
    ),
    bodyMedium: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      height: 1.43,
    ),
    bodySmall: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
      height: 1.33,
    ),
  ).apply(
    fontFamily: 'FZXBS',
    bodyColor: CustomColors.normal,
    displayColor: CustomColors.normal,
  );
}

class CustomTextTheme extends TextTheme {
  // final TextStyle? paragraph;
  // final TextStyle? paragraphBold;
  // final TextStyle? subtitle;
  // final TextStyle? normal;
  // final TextStyle? normalBold;
  // final TextStyle? normalSmall;
  // final TextStyle? normalSmallBold;
  // final TextStyle? normalSmallHeavy;
  // final TextStyle? normalBig;
  // final TextStyle? small;
  // final TextStyle? smallBold;
  // final TextStyle? tiny;
  // final TextStyle? tinyBold;

  const CustomTextTheme({
    // this.paragraph,
    // this.paragraphBold,
    // this.subtitle,
    // this.normal,
    // this.normalBold,
    // this.normalSmall,
    // this.normalSmallBold,
    // this.normalSmallHeavy,
    // this.normalBig,
    // this.small,
    // this.smallBold,
    // this.tiny,
    // this.tinyBold,
    TextStyle? displayLarge,
    TextStyle? displayMedium,
    TextStyle? displaySmall,
    TextStyle? headlineLarge,
    TextStyle? headlineMedium,
    TextStyle? headlineSmall,
    TextStyle? titleLarge,
    TextStyle? titleMedium,
    TextStyle? titleSmall,
    TextStyle? bodyLarge,
    TextStyle? bodyMedium,
    TextStyle? bodySmall,
    TextStyle? labelLarge,
    TextStyle? labelMedium,
    TextStyle? labelSmall,
  }) : super(
          displayLarge: displayLarge,
          displayMedium: displayMedium,
          displaySmall: displaySmall,
          headlineLarge: headlineLarge,
          headlineMedium: headlineMedium,
          headlineSmall: headlineSmall,
          titleLarge: titleLarge,
          titleMedium: titleMedium,
          titleSmall: titleSmall,
          bodyLarge: bodyLarge,
          bodyMedium: bodyMedium,
          bodySmall: bodySmall,
          labelLarge: labelLarge,
          labelMedium: labelMedium,
          labelSmall: labelSmall,
        );

  @override
  CustomTextTheme apply({
    String? fontFamily,
    double fontSizeFactor = 1.0,
    double fontSizeDelta = 0.0,
    Color? displayColor,
    Color? bodyColor,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
  }) {
    return CustomTextTheme(
      // headline1: headline1?.apply(
      //   color: displayColor,
      //   decoration: decoration,
      //   decorationColor: decorationColor,
      //   decorationStyle: decorationStyle,
      //   fontFamily: fontFamily,
      //   fontSizeFactor: fontSizeFactor,
      //   fontSizeDelta: fontSizeDelta,
      // ),
      // headline2: headline2?.apply(
      //   color: displayColor,
      //   decoration: decoration,
      //   decorationColor: decorationColor,
      //   decorationStyle: decorationStyle,
      //   fontFamily: fontFamily,
      //   fontSizeFactor: fontSizeFactor,
      //   fontSizeDelta: fontSizeDelta,
      // ),
      // headline3: headline3?.apply(
      //   color: displayColor,
      //   decoration: decoration,
      //   decorationColor: decorationColor,
      //   decorationStyle: decorationStyle,
      //   fontFamily: fontFamily,
      //   fontSizeFactor: fontSizeFactor,
      //   fontSizeDelta: fontSizeDelta,
      // ),
      // headline4: headline4?.apply(
      //   color: displayColor,
      //   decoration: decoration,
      //   decorationColor: decorationColor,
      //   decorationStyle: decorationStyle,
      //   fontFamily: fontFamily,
      //   fontSizeFactor: fontSizeFactor,
      //   fontSizeDelta: fontSizeDelta,
      // ),
      // headline5: headline5?.apply(
      //   color: bodyColor,
      //   decoration: decoration,
      //   decorationColor: decorationColor,
      //   decorationStyle: decorationStyle,
      //   fontFamily: fontFamily,
      //   fontSizeFactor: fontSizeFactor,
      //   fontSizeDelta: fontSizeDelta,
      // ),
      // headline6: headline6?.apply(
      //   color: bodyColor,
      //   decoration: decoration,
      //   decorationColor: decorationColor,
      //   decorationStyle: decorationStyle,
      //   fontFamily: fontFamily,
      //   fontSizeFactor: fontSizeFactor,
      //   fontSizeDelta: fontSizeDelta,
      // ),
      // paragraph: paragraph?.apply(
      //   color: bodyColor,
      //   decoration: decoration,
      //   decorationColor: decorationColor,
      //   decorationStyle: decorationStyle,
      //   fontFamily: fontFamily,
      //   fontSizeFactor: fontSizeFactor,
      //   fontSizeDelta: fontSizeDelta,
      // ),
      // paragraphBold: paragraphBold?.apply(
      //   color: bodyColor,
      //   decoration: decoration,
      //   decorationColor: decorationColor,
      //   decorationStyle: decorationStyle,
      //   fontFamily: fontFamily,
      //   fontSizeFactor: fontSizeFactor,
      //   fontSizeDelta: fontSizeDelta,
      // ),
      // subtitle: subtitle?.apply(
      //   color: bodyColor,
      //   decoration: decoration,
      //   decorationColor: decorationColor,
      //   decorationStyle: decorationStyle,
      //   fontFamily: fontFamily,
      //   fontSizeFactor: fontSizeFactor,
      //   fontSizeDelta: fontSizeDelta,
      // ),
      // normal: normal?.apply(
      //   color: bodyColor,
      //   decoration: decoration,
      //   decorationColor: decorationColor,
      //   decorationStyle: decorationStyle,
      //   fontFamily: fontFamily,
      //   fontSizeFactor: fontSizeFactor,
      //   fontSizeDelta: fontSizeDelta,
      // ),
      // normalBold: normalBold?.apply(
      //   color: bodyColor,
      //   decoration: decoration,
      //   decorationColor: decorationColor,
      //   decorationStyle: decorationStyle,
      //   fontFamily: fontFamily,
      //   fontSizeFactor: fontSizeFactor,
      //   fontSizeDelta: fontSizeDelta,
      // ),
      // normalSmall: normalSmall?.apply(
      //   color: bodyColor,
      //   decoration: decoration,
      //   decorationColor: decorationColor,
      //   decorationStyle: decorationStyle,
      //   fontFamily: fontFamily,
      //   fontSizeFactor: fontSizeFactor,
      //   fontSizeDelta: fontSizeDelta,
      // ),
      // normalSmallBold: normalSmallBold?.apply(
      //   color: bodyColor,
      //   decoration: decoration,
      //   decorationColor: decorationColor,
      //   decorationStyle: decorationStyle,
      //   fontFamily: fontFamily,
      //   fontSizeFactor: fontSizeFactor,
      //   fontSizeDelta: fontSizeDelta,
      // ),
      // normalSmallHeavy: normalSmallHeavy?.apply(
      //   color: bodyColor,
      //   decoration: decoration,
      //   decorationColor: decorationColor,
      //   decorationStyle: decorationStyle,
      //   fontFamily: fontFamily,
      //   fontSizeFactor: fontSizeFactor,
      //   fontSizeDelta: fontSizeDelta,
      // ),
      // normalBig: normalBig?.apply(
      //   color: bodyColor,
      //   decoration: decoration,
      //   decorationColor: decorationColor,
      //   decorationStyle: decorationStyle,
      //   fontFamily: fontFamily,
      //   fontSizeFactor: fontSizeFactor,
      //   fontSizeDelta: fontSizeDelta,
      // ),
      // small: small?.apply(
      //   color: bodyColor,
      //   decoration: decoration,
      //   decorationColor: decorationColor,
      //   decorationStyle: decorationStyle,
      //   fontFamily: fontFamily,
      //   fontSizeFactor: fontSizeFactor,
      //   fontSizeDelta: fontSizeDelta,
      // ),
      // smallBold: smallBold?.apply(
      //   color: bodyColor,
      //   decoration: decoration,
      //   decorationColor: decorationColor,
      //   decorationStyle: decorationStyle,
      //   fontFamily: fontFamily,
      //   fontSizeFactor: fontSizeFactor,
      //   fontSizeDelta: fontSizeDelta,
      // ),
      // tiny: tiny?.apply(
      //   color: bodyColor,
      //   decoration: decoration,
      //   decorationColor: decorationColor,
      //   decorationStyle: decorationStyle,
      //   fontFamily: fontFamily,
      //   fontSizeFactor: fontSizeFactor,
      //   fontSizeDelta: fontSizeDelta,
      // ),
      // tinyBold: tinyBold?.apply(
      //   color: bodyColor,
      //   decoration: decoration,
      //   decorationColor: decorationColor,
      //   decorationStyle: decorationStyle,
      //   fontFamily: fontFamily,
      //   fontSizeFactor: fontSizeFactor,
      //   fontSizeDelta: fontSizeDelta,
      // ),
      displayLarge: displayLarge?.apply(
        color: bodyColor,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        fontFamily: fontFamily,
        fontSizeFactor: fontSizeFactor,
        fontSizeDelta: fontSizeDelta,
      ),
      displayMedium: displayMedium?.apply(
        color: bodyColor,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        fontFamily: fontFamily,
        fontSizeFactor: fontSizeFactor,
        fontSizeDelta: fontSizeDelta,
      ),
      displaySmall: displaySmall?.apply(
        color: bodyColor,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        fontFamily: fontFamily,
        fontSizeFactor: fontSizeFactor,
        fontSizeDelta: fontSizeDelta,
      ),
      headlineLarge: headlineLarge?.apply(
        color: bodyColor,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        fontFamily: fontFamily,
        fontSizeFactor: fontSizeFactor,
        fontSizeDelta: fontSizeDelta,
      ),
      headlineMedium: headlineMedium?.apply(
        color: bodyColor,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        fontFamily: fontFamily,
        fontSizeFactor: fontSizeFactor,
        fontSizeDelta: fontSizeDelta,
      ),
      headlineSmall: headlineSmall?.apply(
        color: bodyColor,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        fontFamily: fontFamily,
        fontSizeFactor: fontSizeFactor,
        fontSizeDelta: fontSizeDelta,
      ),
      titleLarge: titleLarge?.apply(
        color: bodyColor,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        fontFamily: fontFamily,
        fontSizeFactor: fontSizeFactor,
        fontSizeDelta: fontSizeDelta,
      ),
      titleMedium: titleMedium?.apply(
        color: bodyColor,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        fontFamily: fontFamily,
        fontSizeFactor: fontSizeFactor,
        fontSizeDelta: fontSizeDelta,
      ),
      titleSmall: titleSmall?.apply(
        color: bodyColor,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        fontFamily: fontFamily,
        fontSizeFactor: fontSizeFactor,
        fontSizeDelta: fontSizeDelta,
      ),
      bodyLarge: bodyLarge?.apply(
        color: bodyColor,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        fontFamily: fontFamily,
        fontSizeFactor: fontSizeFactor,
        fontSizeDelta: fontSizeDelta,
      ),
      bodyMedium: bodyMedium?.apply(
        color: bodyColor,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        fontFamily: fontFamily,
        fontSizeFactor: fontSizeFactor,
        fontSizeDelta: fontSizeDelta,
      ),
      bodySmall: bodySmall?.apply(
        color: bodyColor,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        fontFamily: fontFamily,
        fontSizeFactor: fontSizeFactor,
        fontSizeDelta: fontSizeDelta,
      ),
      labelLarge: labelLarge?.apply(
        color: bodyColor,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        fontFamily: fontFamily,
        fontSizeFactor: fontSizeFactor,
        fontSizeDelta: fontSizeDelta,
      ),
      labelMedium: labelMedium?.apply(
        color: bodyColor,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        fontFamily: fontFamily,
        fontSizeFactor: fontSizeFactor,
        fontSizeDelta: fontSizeDelta,
      ),
      labelSmall: labelSmall?.apply(
        color: bodyColor,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        fontFamily: fontFamily,
        fontSizeFactor: fontSizeFactor,
        fontSizeDelta: fontSizeDelta,
      ),
    );
  }
}

ThemeData get theme {
  final base = ThemeData(
    brightness: Brightness.light,
    textTheme: textTheme,
  );
  return base.copyWith(
    splashFactory: NoSplashFactory(),
    primaryColor: CustomColors.normal,
    primaryColorLight: CustomColors.white,
    appBarTheme: base.appBarTheme.copyWith(
      backwardsCompatibility: false,
      brightness: Brightness.light,
      color: CustomColors.white,
      elevation: 0,
      textTheme: _buildTextTheme(
          base.textTheme.copyWith(headline6: textTheme.headline5),
          kTextDark,
          kTextDarker),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: CustomColors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
      foregroundColor: CustomColors.normal,
      titleSpacing: 0,
    ),
    buttonColor: kOrange,
    buttonTheme: base.buttonTheme.copyWith(
      buttonColor: kOrange,
    ),
    cardColor: kLight,
    cardTheme: base.cardTheme.copyWith(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: CustomColors.white,
    ),
    scaffoldBackgroundColor: CustomColors.white,
    primaryIconTheme: base.iconTheme.copyWith(
      color: kIconDark,
    ),
    toggleableActiveColor: kOrange,
    dividerColor: kDividerDark,
    textTheme: _buildTextTheme(base.textTheme, kTextDark, kTextDarker),
    primaryTextTheme:
        _buildTextTheme(base.primaryTextTheme, kTextDark, kTextDarker),
    accentTextTheme:
        _buildTextTheme(base.accentTextTheme, kTextDark, kTextDarker),
    snackBarTheme: base.snackBarTheme.copyWith(
      backgroundColor: kLight,
      contentTextStyle: base.textTheme.bodyText1!.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 15,
        fontFamily: 'Rubik',
        color: kTextDark,
      ),
    ),
    popupMenuTheme: PopupMenuThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
      elevation: 4,
    ),
    inputDecorationTheme: InputDecorationTheme(
      hoverColor: CustomColors.vi,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        borderSide: BorderSide(color: CustomColors.vi),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        borderSide: BorderSide(color: CustomColors.vi),
      ),
      contentPadding: EdgeInsets.all(16),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        textStyle: ButtonStyleButton.allOrNull<TextStyle>(textTheme.titleMedium),
        minimumSize: ButtonStyleButton.allOrNull<Size>(Size(52, 52)),
        shape: ButtonStyleButton.allOrNull<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
        ),
      ),
    ),
    dividerTheme: DividerThemeData(
      color: CustomColors.divider,
      thickness: 1
    ),
    colorScheme: ColorScheme.fromSwatch(primarySwatch: CustomColors.vi),
  );
}

ThemeData get darkTheme {
  final base = ThemeData.dark();
  return base.copyWith(
    primaryColor: kLight,
    primaryColorLight: kDark,
    accentColor: kOrange,
    appBarTheme: base.appBarTheme.copyWith(
      brightness: Brightness.dark,
      color: kDark,
      elevation: 4,
    ),
    buttonColor: kOrange,
    buttonTheme: base.buttonTheme.copyWith(
      buttonColor: kOrange,
    ),
    cardColor: kDark,
    cardTheme: base.cardTheme.copyWith(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    scaffoldBackgroundColor: kBackgroundDark,
    primaryIconTheme: base.iconTheme.copyWith(
      color: kIconDark,
    ),
    toggleableActiveColor: kOrange,
    dividerColor: kDividerLight,
    textTheme: _buildTextTheme(base.textTheme, kTextLight, kTextLighter),
    primaryTextTheme:
        _buildTextTheme(base.primaryTextTheme, kTextLight, kTextLighter),
    accentTextTheme:
        _buildTextTheme(base.accentTextTheme, kTextLight, kTextLighter),
    snackBarTheme: base.snackBarTheme.copyWith(
      backgroundColor: kDark,
      contentTextStyle: base.textTheme.bodyText1!.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 15,
        fontFamily: 'Rubik',
        color: kTextLight,
      ),
    ),
  );
}

TextTheme _buildTextTheme(TextTheme base, Color displayColor, Color bodyColor) {
  return base
      // .copyWith(
      //   headline5: base.headline5!.copyWith(
      //     fontWeight: FontWeight.w700,
      //     letterSpacing: 0.5,
      //     fontSize: 20,
      //   ),
      //   headline6: base.headline6!.copyWith(
      //     fontWeight: FontWeight.w700,
      //     letterSpacing: 0.5,
      //     fontSize: 20,
      //   ),
      //   bodyText1: base.bodyText1!.copyWith(
      //     fontWeight: FontWeight.w500,
      //     fontSize: 16.0,
      //   ),
      //   subtitle1: base.bodyText1!.copyWith(
      //     fontWeight: FontWeight.w500,
      //     fontSize: 16.0,
      //   ),
      // )
      .apply(
    fontFamily: 'FZXBS',
    displayColor: displayColor,
    bodyColor: bodyColor,
  );
}
