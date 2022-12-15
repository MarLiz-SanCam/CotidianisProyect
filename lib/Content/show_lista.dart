import 'package:cotidianis_pdm/Theme/champagne_pink.dart';
import 'package:flutter/material.dart';

import '../Theme/light_steel_blue.dart';

class ShowList extends StatefulWidget {
  const ShowList({Key? key}) : super(key: key);

  @override
  State<ShowList> createState() => _ShowListState();
}

class _ShowListState extends State<ShowList> {
  List<Map> elementosMarcables = [
    {"name": "Elemento de una lista sin decoraciones", "isChecked": false},
    {"name": "Otro Elemento", "isChecked": false},
    {"name": "Sirven como para lista de compras", "isChecked": false, },
    {"name": "Se pueden agregar varios elementos", "isChecked": false},
    {"name": "La entrega de La App es el 15 de dic", "isChecked": false},
    {"name": "Y un elemento más", "isChecked": false}
  ];

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
              color: LightSteelBlue.lSteelBlue[50]),
        ),
        backgroundColor: LightSteelBlue.lSteelBlue[500],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              'Ejemplo (lista simple)',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 10),
            const Divider(),
            const SizedBox(height: 10),

            Column(
                children: elementosMarcables.map((hobby) {
                  return CheckboxListTile(
                      value: hobby["isChecked"],
                      title: Text(hobby["name"]),
                      controlAffinity: ListTileControlAffinity.leading,
                      onChanged: (newValue) {
                        setState(() {
                          hobby["isChecked"] = newValue;
                        });
                      });
                }).toList()),

            // Display the result here
            const SizedBox(height: 10),
            const Divider(),
            const SizedBox(height: 10),
            Wrap(
              children: elementosMarcables.map((hobby) {
                if (hobby["isChecked"] == true) {
                  return Card(
                    elevation: 3,
                    color: ChampagnePink.champagnePink,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(hobby["name"]),
                    ),
                  );
                }

                return Container();
              }).toList(),
            )
          ]),
        ),
      )
    );
  }
}
