import 'package:cotidianis_pdm/Theme/light_steel_blue.dart';
import 'package:flutter/material.dart';


class EditProfile extends StatefulWidget{
  const EditProfile({Key? key}) : super(key: key);
  @override
  State<EditProfile> createState() => _EditProfile();
}

class _EditProfile extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //Barra de la aplicación
        centerTitle: true, //Centra el título de la barra de la aplicación
        title: const Text(
          'PDM proyect',
          //Texto para el título de la aplicación (aparece en la barra)
          style: TextStyle(fontSize: 22.0, fontFamily: 'RobotoSlab'),
        ),
        backgroundColor: LightSteelBlue.lSteelBlue,
      ),
      body: ListView(
        children: const <Widget>[

          ],
      ),

    );
  }
}