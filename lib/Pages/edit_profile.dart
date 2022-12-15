import 'package:cotidianis_pdm/Theme/buff.dart';
import 'package:cotidianis_pdm/Theme/sonic_silver.dart';
import 'package:cotidianis_pdm/Theme/steel_blue.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget{
  const EditProfile({Key? key}) : super(key: key);
  @override
  State<EditProfile> createState() => _EditProfile();
}

class _EditProfile extends State<EditProfile> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SonicSilver.sonicSilver.shade100,
      appBar: AppBar(
        centerTitle: true, //Centra el título de la barra de la aplicación
        title: const Text(
          'perfil',
          //Texto para el título de la aplicación (aparece en la barra)
          style: TextStyle(fontSize: 22.0, fontFamily: 'RobotoSlab'),
        ),
        backgroundColor: LightSteelBlue.lSteelBlue,
      ),
      body: Column(
        // mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
            height: 35,
          ),
          CircleAvatar(
            backgroundColor: Buff.buff[100],
            radius: 80,
            child: Text(
              "MaP", //TODO: vava ser la foto de perfil del usuario
              style: TextStyle(
                  fontSize: 20,
                  color: Buff.buff[800]),
            ),
          ),
          const SizedBox(
            height: 15,
            width: 300,
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Buff.buff.shade200
                ),
              ),
              onPressed: () {
                //TODO: permitir al usuario agregar foto de perfil
              },
              child: Text("Editar",
                  style: TextStyle(fontSize: 18.0,color: Buff.buff.shade700))
          ),
          const SizedBox(
            height: 35,
            width: 300,
          ),
          Row(
            children: [
              const SizedBox(
                width: 25,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Nombre Usuario",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "MarLiz",
                    style: TextStyle(
                        fontSize: 21,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w500
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 35,
            width: 300,
          ),
          Row(
            children: [
              const SizedBox(
                width: 25,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "E-mail:",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    user.email!,
                    style: const TextStyle(
                      fontSize: 21,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 35,
            width: 300,
          ),
          Row(
            children: [
              const SizedBox(
                width: 25,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Equipos:",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    user.email!,
                    style: const TextStyle(
                        fontSize: 21,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  Text(
                    user.email!,
                    style: const TextStyle(
                        fontSize: 21,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  const Text(
                    "Equipo 1",
                    style: TextStyle(
                        fontSize: 21,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  const Text(
                    "Equipo X",
                    style: TextStyle(
                        fontSize: 21,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w500
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 70,
            width: 300,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                width: 150,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Buff.buff.shade200
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Guardar",
                      style: TextStyle(fontSize: 18.0,color: Buff.buff.shade700))
              ),
            ],
          ),

        ],
      ),
    );
  }
}