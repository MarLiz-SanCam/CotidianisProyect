import 'package:flutter/material.dart';

class SonicSilver {
  static const MaterialColor sonicSilver = MaterialColor(
    0xff7a7a7a, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xfff5f5f5), //10%
      100: Color(0xffe0e0e0), //20%
      200: Color(0xffcccccc), //30%
      300: Color(0xffb8b8b8), //40%
      400: Color(0xffa3a3a3), //50%
      500: Color(0xff8f8f8f), //60%
      600: Color(0xff666666), //70%
      700: Color(0xff525252), //80%
      800: Color(0xff3d3d3d), //90%
      900: Color(0xff292929), //100%
    },
  );
}