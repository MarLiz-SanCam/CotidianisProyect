import 'package:flutter/material.dart';

class ChampagnePink {
  static const MaterialColor champagnePink = const MaterialColor(
    0xffecdfd8, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xfff8f3f2), //10%
      //Este es el shade del tono principal
      100: const Color(0xffe3cfca), //20%
      200: const Color(0xffd5b8af), //30%
      300: const Color(0xffc7a094), //40%
      400: const Color(0xffb98879), //50%
      500: const Color(0xffab705f), //60%
      600: const Color(0xff935e4d), //70%
      700: const Color(0xff784d3f), //80%
      800: const Color(0xff5e3c31), //90%
      900: const Color(0xff432B23), //100%
    },
  );
}