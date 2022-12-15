import 'package:flutter/material.dart';

class LightSteelBlue {
  static const MaterialColor lSteelBlue = MaterialColor(
    0xff4986ab, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xfff1f6f9), //10%
      100: Color(0xffd4e3ed), //20%
      200: Color(0xffb8d1e0), //30%
      300: Color(0xff9bbed4), //40%
      400: Color(0xff7eacc8), //50%
      500: Color(0xff6299bc), //60%
      600: Color(0xff3d708f), //70%
      700: Color(0xff315972), //80%
      800: Color(0xff254356), //90%
      900: Color(0xff12212b), //100%
    },
  );
}