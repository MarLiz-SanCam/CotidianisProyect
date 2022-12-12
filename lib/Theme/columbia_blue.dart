import 'package:flutter/material.dart';

class ColumbiaBlue {
  static const MaterialColor columbiaBlue = MaterialColor(
    0xffc6e1f1, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xffeff6fb), //10%
      //Este es el shade del tono principal
      100: Color(0xffAdd4eb), //20%
      200: Color(0xff8cc3e3), //30%
      300: Color(0xff6bb2db), //40%
      400: Color(0xff4aa1d3), //50%
      500: Color(0xff308ec5), //60%
      600: Color(0xff2877a4), //70%
      700: Color(0xff205f83), //80%
      800: Color(0xff184763), //90%
      900: Color(0xff102f42), //100%
    },
  );
}