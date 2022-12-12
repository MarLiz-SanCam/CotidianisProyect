import 'package:cotidianis_pdm/Pages/FirstScreen.dart';
import 'package:cotidianis_pdm/Theme/ChampagnePink.dart';
import 'package:cotidianis_pdm/Theme/LightSteelBlue.dart';
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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Organizador Personal",
      home: FutureBuilder(
        future: _fbApp,
        builder: (context, snapshot){
          if(snapshot.hasError){
            print('Error found!! ${snapshot.error.toString()}');
            return const Text('Something went wrong...');
          }else if(snapshot.hasData){
            return FirstScreen();
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
    );
  }
}
