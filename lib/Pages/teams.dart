// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import '../Theme/champagne_pink.dart';
import '../Theme/light_steel_blue.dart';

class Teams extends StatefulWidget {
  const Teams({
    Key? key,
  }) : super(key: key);
  @override
  State<Teams> createState() => _AddNewT();
}

class _AddNewT extends State<Teams> {
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
        backgroundColor: ChampagnePink.champagnePink[300],
      ),
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              Card(
                color: LightSteelBlue.lSteelBlue[50],
                child: ListTile(
                  onLongPress: () {
                    Navigator.of(context).pushNamed("/ShowTeam");
                  },
                  leading: CircleAvatar(
                    backgroundColor: ChampagnePink.champagnePink,
                    radius: 25,
                    child: Text(
                      "TM",
                      style: TextStyle(
                          fontSize: 20,
                          color: ChampagnePink.champagnePink[500]),
                    ),
                  ),
                  title: const Text(
                    "My Team Example",
                    style: TextStyle(fontSize: 20),
                  ),
                  subtitle: const Text("Líder: User Test (yo)"),
                  trailing: const Icon(
                    Icons.navigate_next_rounded,
                    size: 40,
                  ),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("/AddTeam");
          print("Presionaste");
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
