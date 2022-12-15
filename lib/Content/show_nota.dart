import 'package:cotidianis_pdm/Theme/champagne_pink.dart';
import 'package:flutter/material.dart';

import '../Theme/light_steel_blue.dart';

class ShowNota extends StatelessWidget {
  const ShowNota({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ChampagnePink.champagnePink[200],
      appBar: AppBar(
        //Barra de la aplicación
        centerTitle: true, //Centra el título de la barra de la aplicación
        title: Text(
          'COTIDIANIS',
          //Texto para el título de la aplicación (aparece en la barra)
          style: TextStyle(fontSize: 22.0, fontFamily: 'RobotoSlab', color: LightSteelBlue.lSteelBlue[50]),
        ),
        backgroundColor: LightSteelBlue.lSteelBlue[500],
      ),
      body: Center(
        child: Card(
          child: Container(
            padding: const EdgeInsets.all(20),
              width: 300,
              height: 400,
              child: Column(
                children: const [
                  Text("Ejemplo", style: TextStyle(fontSize: 30, fontFamily: 'RobotoSlab'),),
                  SizedBox(height: 25,),
                  Text("Nota de ejemplo que se muestra en formato simple, sin decoraciones", style: TextStyle(fontSize: 25, fontFamily: 'RobotoSlab'),),
                ],
              )
          ),
        ),
      ),
    );
  }
}
