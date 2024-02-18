import "package:flutter/material.dart";

class Styles {
  static const _fontNameDefault = 'Merriweather';
  static const _textSizeSmall = 14.0;
  static const _textSizeMedium = 28.0;
  static const _textSizeLarge = 24.0;
  static const _textSizeExtraLarge = 32.0;
  static const _textSizeGiant = 72.0;

  static const Color defaultColor = Color.fromARGB(255, 0, 153, 255);
  static const Color accentColor = Color.fromARGB(255, 17, 6, 116);
  static const Color faintColor = Color.fromARGB(255, 136, 193, 226);
  static const Color brightColor = Color.fromARGB(255, 0, 225, 255);

  static const Color backGroundDark = Color.fromARGB(255, 32, 32, 32);
  static const Color backGroundLight = Color.fromARGB(255, 207, 255, 255);

  static final ThemeData generalTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: defaultColor)
        .copyWith(secondary: accentColor),
    scaffoldBackgroundColor: backGroundLight,
    useMaterial3: true,
  );

  static const largeText = TextStyle(
    fontFamily: _fontNameDefault,
    color: defaultColor,
    fontSize: _textSizeLarge,
  );

  static const largeText2 = TextStyle(
    fontFamily: _fontNameDefault,
    color: Colors.blueGrey,
    fontSize: _textSizeExtraLarge,
  );

  static const giantText = TextStyle(
    fontFamily: _fontNameDefault,
    color: Colors.black87,
    fontSize: _textSizeGiant,
  );
}
