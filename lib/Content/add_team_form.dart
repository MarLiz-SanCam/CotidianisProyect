// ignore_for_file: avoid_print, body_might_complete_normally_nullable
import 'package:cotidianis_pdm/Theme/buff.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../Theme/steel_blue.dart';
// --------------------------  Fin de los 'import' -------------------------- //
class AddTeam extends StatefulWidget {
  const AddTeam({Key? key}) : super(key: key);

  @override
  State<AddTeam> createState() => _AddTeam();
}

class _AddTeam extends State<AddTeam> {
  final titleController = TextEditingController();
  late String title;
  @override
  void dispose(){
    titleController.dispose();
    super.dispose();
  }
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
        backgroundColor: Buff.buff,
      ),
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 40),
            //color: Colors.yellow,
            child: Column(
              children: [
                Form(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextFormField(
                          //TODO: Ingresar nombre del equipo
                          controller: titleController,
                          autocorrect: false,
                          keyboardType: TextInputType.emailAddress,
                          cursorColor: LightSteelBlue.lSteelBlue,
                          decoration:
                              const InputDecoration(labelText: "Nombre del Equipo"),
                          validator: (title) {
                            if (title!.isEmpty) {
                              return '¡Ingrese titulo!';
                            }
                          },

                        ),
                        const SizedBox(height: 30),
                        const Text("Añadir participante"),
                        TextFormField(
                          //TODO: Agregar participantes
                          autocorrect: false,
                          keyboardType: TextInputType.emailAddress,
                          cursorColor: LightSteelBlue.lSteelBlue,
                          decoration: const InputDecoration(
                              labelText: ""),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return '¡Ingrese su nombre!';
                            }
                          },
                        ),
                        const SizedBox(height: 30),
                      ]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Buff.buff),
                      ),
                      onPressed: () {
                        //Si se cancela el inicio de sesión, se cierra la aplicación
                        print(
                            " Botón presionado :O Inicio de sesión cancelado");
                        Navigator.of(context).pop();
                        SystemNavigator.pop();
                      },
                      child: const Text(
                        'Cancelar',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Buff.buff),
                      ),
                      onPressed: () {
                        print(
                            " Botón presionado :O Inicio de sesión cancelado");
                        Navigator.of(context).pop();
                        SystemNavigator.pop();
                      },
                      child: const Text(
                        'Crear',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
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
