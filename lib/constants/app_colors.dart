import 'package:flutter/material.dart';

class AppColors {
  /// Primary colors
  static const Color red = Color(0xFFFFA07A);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color darkBlue = Color(0xFF284DAE);
  static const Color lightBlue = Color(0xFF7292CF);

  /// Transparent colors
  static const Color transparent = Color(0x00000000);
  static const Color transparentDarkBlue = Color(0xAA284DAE);

  /// Material color for defaultColor
  static MaterialColor defaultColor = const MaterialColor(
    0xFF0F2550,
    <int, Color>{
      050: white,
      100: white,
      200: white,
      300: white,
      500: white,
      400: white,
      600: white,
      700: white,
      800: white,
      900: white,
    },
  );
}
