import 'package:flutter/material.dart';

const int _deepOrangePrimaryValue = 0xFFFFAB91;

class MainOrangePalette {
  static const MaterialColor mainOrange = const MaterialColor(
    _deepOrangePrimaryValue,
    const <int, Color>{
      50: Color(0xFFFBE9E7),
      100: Color(0xFFFFCCBC),
      200: Color(_deepOrangePrimaryValue),
      300: Color(0xFFFF8A65),
      400: Color(0xFFFF7043),
      500: Color(0xFFFF5722),
      600: Color(0xFFF4511E),
      700: Color(0xFFE64A19),
      800: Color(0xFFD84315),
      900: Color(0xFFBF360C),
    },
  );
}
