// ignore_for_file: non_constant_identifier_names, body_might_complete_normally_nullable, avoid_print

import 'package:cotidianis_pdm/Theme/buff.dart';
import 'package:cotidianis_pdm/Theme/steel_blue.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LogInScrn extends StatefulWidget {
  const LogInScrn({Key? key}) : super(key: key);

  @override
  LogInScrnState createState() => LogInScrnState();
}

class LogInScrnState extends State<LogInScrn> {
  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Barra de la aplicación
        centerTitle: true, //Centra el título de la barra de la aplicación
        title: Text(
          'COTIDIANIS',
          //Texto para el título de la aplicación (aparece en la barra)
          style: TextStyle(
              fontSize: 22.0,
              fontFamily: 'RobotoSlab',
              color: Buff.buff[900]),
        ),
        backgroundColor: Buff.buff[400],
      ),
      body: ListView(
        children: [
          Container(
            //color: SonicSilver.sonicSilver[100],
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 40),
            child: Column(
              children: [
                Icon(
                  Icons.person_rounded,
                  color: LightSteelBlue.lSteelBlue[400],
                  size: 200,
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Form(
                  //key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(height: 30),
                      TextFormField(
                        //TODO: validaddor del nombre
                        controller: emailController,
                        autocorrect: false,
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: LightSteelBlue.lSteelBlue,
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                            labelText: "Correo Electrónico"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return '¡Ingrese su CORREO!';
                          }
                        },
                      ),
                      const SizedBox(height: 30),
                      TextFormField(
                        //TODO: validaddor de la contraseña
                        controller: passController,
                        obscureText: true,
                        decoration:
                            const InputDecoration(labelText: "Contraseña"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return '¡contraseña!';
                          }
                        },
                      ),
                      const SizedBox(height: 10),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed('/PasswordRecovery');
                          },
                          child: Text(
                            "olvidé mi contraseña",
                            style: TextStyle(
                                color: Buff.buff[400]),
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 60.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              LightSteelBlue.lSteelBlue),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text("Cancelar",
                            style: TextStyle(fontSize: 18.0))),
                    const SizedBox(width: 50),
                    ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              LightSteelBlue.lSteelBlue),
                        ),
                        onPressed: () {
                          //LogIn();
                          FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                                  email: emailController.text,
                                  password: passController.text)
                              .then((value) {
                            Navigator.of(context).pushNamed("/HomeScrn");
                          }).onError((error, stackTrace) {
                            print("ERROR! ${error.toString()}");
                          });
                        },
                        child: const Text("Iniciar Sesion",
                            style: TextStyle(fontSize: 18.0))),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
