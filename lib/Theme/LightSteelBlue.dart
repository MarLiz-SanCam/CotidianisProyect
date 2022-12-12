import 'package:flutter/material.dart';

class LightSteelBlue {
  static const MaterialColor lSteelBlue = const MaterialColor(
    0xffb5c5d7, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xfff2f5f8), //10%
      100: const Color(0xffd7e0ea), //20%
      //Este es el shade del tono principal
      200: const Color(0xffa2b6cd), //30%
      300: const Color(0xff88a1bf), //40%
      400: const Color(0xff6d8db0), //50%
      500: const Color(0xff56789f), //60%
      600: const Color(0xff476485), //70%
      700: const Color(0xff39506a), //80%
      800: const Color(0xff2b3c50), //90%
      900: const Color(0xff1d2835), //100%
    },
  );
}