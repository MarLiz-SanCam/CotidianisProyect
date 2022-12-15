import 'package:flutter/material.dart';

class Buff {
  static const MaterialColor buff = MaterialColor(
    0xffead485, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xfffcf9ee), //10%
      //Este es el shade del tono principal
      100: Color(0xfff6edcb), //20%
      200: Color(0xfff0e1ab), //30%
      300: Color(0xffe4c862), //40%
      400: Color(0xffdebc3f), //50%
      500: Color(0xffd1ac23), //60%
      600: Color(0xffae8f1e), //70%
      700: Color(0xff8c7218), //80%
      800: Color(0xff695612), //90%
      900: Color(0xff46390c), //100%
    },
  );
}