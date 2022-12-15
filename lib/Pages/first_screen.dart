// ignore: unnecessary_import
import 'package:flutter/material.dart';
import '../Theme/champagne_pink.dart';


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
        title: const Text(
          'COTIDIANIS',
          //Texto para el título de la aplicación (aparece en la barra)
          style: TextStyle(fontSize: 22.0, fontFamily: 'RobotoSlab', color: Colors.black),
        ),
        backgroundColor: ChampagnePink.champagnePink,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/3.jpg"),
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
                          color: ChampagnePink.champagnePink[900],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          elevation: 5,
                          height: 60.0,
                          minWidth: 170.0,
                          splashColor: Colors.transparent,
                          onPressed: () async {
                            Navigator.of(context).pushNamed('/RegisterScrn');
                          },
                          child: const Text(
                            'Registrarse',

                            style: TextStyle(
                              color: ChampagnePink.champagnePink,
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
                          color: ChampagnePink.champagnePink[900],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          elevation: 5,
                          height: 60.0,
                          minWidth: 170.0,
                          splashColor: Colors.transparent,
                          onPressed: () async {
                            Navigator.of(context).pushNamed('/LogInScrn');
                          },
                          child: const Text(
                            'Iniciar Sesión',
                            style: TextStyle(
                              color: ChampagnePink.champagnePink,
                              fontFamily: 'PTSerif',
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                            textAlign: TextAlign.center,
                          )
                      ),
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
      bottomNavigationBar: BottomAppBar(
        //Barra del fodo de la app
        color: ChampagnePink.champagnePink,
        //Barra del fodo de la app
        child: Text(
          'PDM - Equipo 1; Cotidianis ',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: ChampagnePink.champagnePink[900],
          ),
        ),
      ),
    );
  }
}
