import 'package:flutter/material.dart';
import '../Theme/champagne_pink.dart';

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
        title: const Text(
          'COTIDIANIS',
          //Texto para el título de la aplicación (aparece en la barra)
          style: TextStyle(fontSize: 22.0, fontFamily: 'RobotoSlab', color: Colors.black),
        ),
        backgroundColor: ChampagnePink.champagnePink,
      ),
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 40),
            child: Column(
              children: [
                const CircleAvatar(/*TODO; allow the user to put their own profile picture*/),
                const SizedBox(
                  height: 25.0,
                ),
                const Text(
                  'Completa todos los campos para crear tu cuenta',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Form(
                  //key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Nombre",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0,
                      ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
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
