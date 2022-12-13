import 'package:cotidianis_pdm/Theme/champagne_pink.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

// --------------------------  Fin de los 'import' -------------------------- //
class AddTeam extends StatefulWidget {
  const AddTeam({Key? key}) : super(key: key);

  @override
  State<AddTeam> createState() => _AddTeam();
}

class _AddTeam extends State<AddTeam> {
  // VARIABLES
  File? ImgPerfil;
  late String Email, PAssword; //TODO: Para recibir y crear usuario
  bool ThereIsProfImg = false;

  final _formKey = GlobalKey<FormState>();


  // ---- fin variables ----
  // FUNCIONES
  Future picWithCameraImgProfile() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() {
        this.ImgPerfil = imageTemp;
        this.ThereIsProfImg = true;
      });
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  Future selectFromGalleryImgProfile() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() {
        this.ImgPerfil = imageTemp;
        this.ThereIsProfImg = true;
      });
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  // ---- Fin Funciones ----

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //Barra de la aplicación
        centerTitle: true, //Centra el título de la barra de la aplicación
        title: Text(
          'PDM proyect',
          //Texto para el título de la aplicación (aparece en la barra)
          style: TextStyle(fontSize: 22.0, fontFamily: 'RobotoSlab'),
        ),
        backgroundColor: ChampagnePink.champagnePink,
      ),
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 40),
            //color: Colors.yellow,
            child: Column(
              children: [
                Icon(
                  Icons.portrait_rounded,
                  color: ChampagnePink.champagnePink,
                  size: 150,
                ),
                SizedBox(
                  height: 25.0,
                ),
                Text(
                  'Completa todos los campos para crear tu cuenta',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),

                SizedBox(
                  height: 60.0,
                ),
                Container(
                  //color: MainColor.mainColor[50],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                             ChampagnePink.champagnePink),
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
                      SizedBox(
                        width: 50,
                      ),
                      ElevatedButton(
                        //TODO: deshabilitar y solo habilitar cuando todo el formulario esté lleno
                        //style: style,
                        style: ElevatedButton.styleFrom(
                          disabledForegroundColor: ChampagnePink.champagnePink[500], disabledBackgroundColor: ChampagnePink.champagnePink[500],
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Procesando datos')));
                          }
                        },
                        //onPressed: null,
                        child: const Text(
                          'Verificar',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
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

    );
  }
}