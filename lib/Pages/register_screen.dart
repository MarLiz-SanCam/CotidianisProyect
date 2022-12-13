// ignore_for_file: avoid_print

import 'package:cotidianis_pdm/Theme/light_steel_blue.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../Theme/champagne_pink.dart';

class RegisterScrn extends StatefulWidget {
  const RegisterScrn({Key? key}) : super(key: key);

  @override
  _RegisterScrnState createState() => _RegisterScrnState();
}

class _RegisterScrnState extends State<RegisterScrn> {
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final userController = TextEditingController();

  @override
  void dispose(){
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
                const CircleAvatar(/*TODO; allow the user to put their own profile picture*/
                radius: 60,
                ),
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
                    children: [
                      TextFormField(
                        //TODO: validaddor del nombre
                        controller: userController,
                        autocorrect: false,
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: LightSteelBlue.lSteelBlue,
                        decoration: const InputDecoration(
                            labelText: "Nombre"
                        ),
                        validator: (userName){
                          if (userName!.isEmpty){
                            return '¡Ingrese su nombre!';
                          }
                        },
                      ),
                      const SizedBox(height: 30),
                      TextFormField(
                        //TODO: validaddor del nombre
                        autocorrect: false,
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: LightSteelBlue.lSteelBlue,
                        decoration: const InputDecoration(
                          labelText: "Correo Electrónico"
                        ),
                        validator: (value){
                          if (value!.isEmpty){
                            return '¡Ingrese su nombre!';
                          }
                        },
                      ),
                      const SizedBox(height: 30),
                      TextFormField(
                        //TODO: validaddor del nombre
                        controller: emailController,
                        autocorrect: false,
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: LightSteelBlue.lSteelBlue,
                        decoration: const InputDecoration(
                            labelText: "Confirmar Correo Electrónico"
                        ),
                        validator: (value){
                          if (value!.isEmpty){
                            return '¡Ingrese su nombre!';
                          }
                        },
                      ),
                      const SizedBox(height: 30),
                      TextFormField(
                        //TODO: validaddor de la contraseña
                        autocorrect: false,
                        obscureText: true,
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: LightSteelBlue.lSteelBlue,
                        decoration: const InputDecoration(
                            labelText: "Contraseña"
                        ),
                        validator: (value){
                          if (value!.isEmpty){
                            return '¡Ingrese su nombre!';
                          }
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        //TODO: validaddor de la confirmación de la comtraseña
                        controller: passController,
                        obscureText: true,
                        autocorrect: false,
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: LightSteelBlue.lSteelBlue,
                        decoration: const InputDecoration(
                            labelText: "Confirmar Contraseña"
                        ),
                        validator: (value){
                          if (value!.isEmpty){
                            return '¡Ingrese su nombre!';
                          }
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25.0,
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
                        onPressed:(){
                          Navigator.of(context).pop();
                        },
                        child: const Text("Cancelar",
                        style: TextStyle(
                          fontSize: 18.0
                        ))
                    ),
                    const SizedBox(width: 50),
                    ElevatedButton( 
                        style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          LightSteelBlue.lSteelBlue),
                    ), 
                        onPressed:(){
                          FirebaseAuth.instance.createUserWithEmailAndPassword(

                              email: emailController.text,
                              password: passController.text
                          ).then((value) {
                            Navigator.of(context).pushNamed("/LogInScrn");
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Cuenta creada exitosamente. Inicie sesión")));
                          }
                          ).onError((error, stackTrace){
                            print("Error: ${error.toString()}");
                          });
                          // Navigator.of(context).pushNamed("/LogInScrn");
                          // ScaffoldMessenger.of(context).showSnackBar(
                          //     const SnackBar(content: Text('Cuenta Creada; ¡¡Inicia Sesión!!')));
                        },
                        child: const Text("Crear Cuenta",
                            style: TextStyle(
                                fontSize: 18.0
                            ))),
                  ],
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
