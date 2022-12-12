import 'package:flutter/material.dart';
import '../Theme/ChampagnePink.dart';

class RegisterScrn extends StatefulWidget {
  const RegisterScrn({Key? key}) : super(key: key);

  @override
  _RegisterScrnState createState() => _RegisterScrnState();
}

class _RegisterScrnState extends State<RegisterScrn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Barra de la aplicación
        centerTitle: true, //Centra el título de la barra de la aplicación
        title: Text(
          'COTIDIANIS',
          //Texto para el título de la aplicación (aparece en la barra)
          style: TextStyle(fontSize: 22.0, fontFamily: 'RobotoSlab', color: Colors.black),
        ),
        backgroundColor: ChampagnePink.champagnePink,
      ),
      bottomNavigationBar: BottomAppBar(
        //Barra del fodo de la app
        child: Text(
          'PDM - Equipo 1; Cotidianis ',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: ChampagnePink.champagnePink[900],
          ),
        ),
        color: ChampagnePink.champagnePink,
      ),
    );
  }
}
