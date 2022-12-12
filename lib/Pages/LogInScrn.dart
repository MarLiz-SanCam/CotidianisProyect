import 'package:flutter/material.dart';
import '../Theme/ChampagnePink.dart';

class LogInScrn extends StatefulWidget {
  const LogInScrn({Key? key}) : super(key: key);

  @override
  _LogInScrnState createState() => _LogInScrnState();
}

class _LogInScrnState extends State<LogInScrn> {
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
    );
  }
}
