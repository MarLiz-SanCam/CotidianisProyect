// ignore: unnecessary_import
import 'package:cotidianis_pdm/Theme/steel_blue.dart';
import 'package:flutter/material.dart';

// --------------------------  Fin de los 'import' -------------------------- //
// Página principal de la aplicación.
class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //Barra de la aplicación
        centerTitle: true, //Centra el título de la barra de la aplicación
        title: Text(
          'COTIDIANIS',
          //Texto para el título de la aplicación (aparece en la barra)
          style: TextStyle(
              fontSize: 22.0, fontFamily: 'RobotoSlab', color: LightSteelBlue.lSteelBlue[50]),
        ),
        backgroundColor: LightSteelBlue.lSteelBlue[800],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/1.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                const SizedBox(
                  height: 300.0,
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 45.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                          color: LightSteelBlue.lSteelBlue[900],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          elevation: 5,
                          height: 60.0,
                          minWidth: 170.0,
                          splashColor: Colors.transparent,
                          onPressed: () async {
                            Navigator.of(context).pushNamed('/RegisterScrn');
                          },
                          child: Text(
                            'Registrarse',
                            style: TextStyle(
                              color: LightSteelBlue.lSteelBlue[50],
                              //fontFamily: 'PTSerif',
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                            textAlign: TextAlign.center,
                          )),
                      const SizedBox(
                        height: 50.0,
                      ),
                      MaterialButton(
                          color: LightSteelBlue.lSteelBlue[800],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          elevation: 5,
                          height: 60.0,
                          minWidth: 170.0,
                          splashColor: Colors.transparent,
                          onPressed: () async {
                            Navigator.of(context).pushNamed('/LogInScrn');
                          },
                          child: Text(
                            'Iniciar Sesión',
                            style: TextStyle(
                              color: LightSteelBlue.lSteelBlue[50],
                              fontFamily: 'PTSerif',
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                            textAlign: TextAlign.center,
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 230.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
