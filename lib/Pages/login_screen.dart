import 'package:cotidianis_pdm/Theme/champagne_pink.dart';
import 'package:cotidianis_pdm/Theme/light_steel_blue.dart';
import 'package:flutter/material.dart';

class LogInScrn extends StatefulWidget {
  const LogInScrn({Key? key}) : super(key: key);

  @override
  _LogInScrnState createState() => _LogInScrnState();
}

class _LogInScrnState extends State<LogInScrn> {
  @override
  Widget build(BuildContext context) {
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
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 40),
            child: Column(
              children: [
                Icon(
                Icons.person_rounded,
                color: ChampagnePink.champagnePink[300],
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
                            return '¡contraseña!';
                          }
                        },
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                TextButton(
                    onPressed: (){
                      Navigator.of(context).pushNamed('/PasswordRecovery');
                    },
                    child: const Text("olvidé mi contraseña")),
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
                          Navigator.of(context).pushNamed("/HomeScrn");
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Abriendo sesión...')));
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
            color: LightSteelBlue.lSteelBlue[50],
          ),
        ),
        color: LightSteelBlue.lSteelBlue[500],
      ),
    );
  }
}
