import 'package:cotidianis_pdm/Theme/light_steel_blue.dart';
import 'package:flutter/material.dart';

class PassRecover extends StatefulWidget {
  const PassRecover({Key? key}) : super(key: key);

  @override
  PassRecoverState createState() => PassRecoverState();
}

class PassRecoverState extends State<PassRecover> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Barra de la aplicación
        centerTitle: true, //Centra el título de la barra de la aplicación
        title: Text(
          'Recuperar Constraseña',
          //Texto para el título de la aplicación (aparece en la barra)
          style: TextStyle(
              fontSize: 22.0,
              fontFamily: 'RobotoSlab',
              color: LightSteelBlue.lSteelBlue[50]),
        ),
        backgroundColor: LightSteelBlue.lSteelBlue[500],
      ),

    );
  }
}
