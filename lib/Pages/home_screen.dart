import 'package:cotidianis_pdm/Theme/champagne_pink.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Theme/light_steel_blue.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override

  Widget build(BuildContext context) {
   final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
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
      drawer: Drawer(
        backgroundColor: LightSteelBlue.lSteelBlue,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(height: 10),
            DrawerHeader(
              decoration: const BoxDecoration(
                color: LightSteelBlue.lSteelBlue,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  /*Icon(Icons.confirmation_num_outlined,// TODO: Cambiar por una imagen
                  PRUEBA DE IMAGEN
                  size: 60,),*/
                  CircleAvatar(
                    backgroundColor: ChampagnePink.champagnePink,
                    radius: 35,
                    child: Text(
                      "MaP",//TODO: vava ser la foto de perfil del usuario
                      style: TextStyle(
                          fontSize: 20,
                          color: ChampagnePink.champagnePink[500]),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Text(
                        //user.displayName!,
                        "UserNameHere",
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        user.email!,
                        style: const TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(

              title: const Text(
                'Ver Perfil',
                textScaleFactor: 1.5,
              ),
              onTap: () {
                // TODO:Update the state of the app
                //Navigator.push(context, )
                Navigator.pop(context);
                Navigator.of(context).pushNamed("/EditProfile");
              },
            ),
            ListTile(
              title: const Text(
                'Equipos de trabajo',
                textScaleFactor: 1.5,
              ),
              onTap: () {
                // TODO:Update the state of the app
                //Navigator.push(context, )
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'Configuración',
                style: TextStyle( color: Colors.grey),
                textScaleFactor: 1.5,
              ),
              onTap: () {
              },
            ),
            ListTile(

              title: const Text(
                'Preferencias',
                style: TextStyle( color: Colors.grey),
                textScaleFactor: 1.5,
              ),
              onTap: () {
              },
            ),
            ListTile(
              title: const Text(
                'Cerrar Sesion',
                textScaleFactor: 1.5,
              ),
              onTap: () async {
                await FirebaseAuth.instance.signOut();
              },
            ),
          ],
        ),
      ),
      body: Container(

      ),
      bottomNavigationBar: BottomAppBar(
        //Barra del fodo de la app
        child: Text(
          'PDM - Equipo 1; Cotidianis ',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: LightSteelBlue.lSteelBlue[50],
          ),
        ),
        color: LightSteelBlue.lSteelBlue[500],
      ),
    );
  }
}
