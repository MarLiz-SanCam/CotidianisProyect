// ignore_for_file: avoid_print

import 'package:cotidianis_pdm/Pages/first_screen.dart';
import 'package:cotidianis_pdm/Theme/champagne_pink.dart';
import 'package:cotidianis_pdm/Theme/light_steel_blue.dart';
import 'package:cotidianis_pdm/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

// --------------------------  Fin de los 'import' -------------------------- //

// Función Main de la aplicación
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();

  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Cotidianis",
      home: FutureBuilder(
        future: _fbApp,
        builder: (context, snapshot){
          if(snapshot.hasError){
            print('Error found!! ${snapshot.error.toString()}');
            return const Text('Something went wrong...');
          }else if(snapshot.hasData){
            return const FirstScreen();
          }else{
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      //HomePage(), // Página principal de la aplicación
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: LightSteelBlue.lSteelBlue,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: ChampagnePink.champagnePink),
      ),
      routes: buildAppRoutes(),
    );
  }
}
