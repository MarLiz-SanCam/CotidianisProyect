import 'package:flutter/material.dart';

class LightSteelBlue {
  static const MaterialColor lSteelBlue = MaterialColor(
    0xffb5c5d7, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xfff2f5f8), //10%
      100: Color(0xffd7e0ea), //20%
      //Este es el shade del tono principal
      200: Color(0xffa2b6cd), //30%
      300: Color(0xff88a1bf), //40%
      400: Color(0xff6d8db0), //50%
      500: Color(0xff56789f), //60%
      600: Color(0xff476485), //70%
      700: Color(0xff39506a), //80%
      800: Color(0xff2b3c50), //90%
      900: Color(0xff1d2835), //100%
    },
  );
}