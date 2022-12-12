//Archivo de rutas
import 'package:cotidianis_pdm/Pages/first_screen.dart';
import 'package:cotidianis_pdm/Pages/login_screen.dart';
import 'package:cotidianis_pdm/Pages/register_screen.dart';
import 'package:flutter/cupertino.dart';

Map<String, WidgetBuilder> buildAppRoutes(){
  return{
    '/FirstScreen': (BuildContext context) => const FirstScreen(),
    '/RegisterScrn': (BuildContext context) => const RegisterScrn(),
    '/LogInScrn': (BuildContext context) => const LogInScrn(),
  };
}