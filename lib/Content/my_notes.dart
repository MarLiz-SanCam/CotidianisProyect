// ignore_for_file: avoid_print, must_be_immutable

import 'package:flutter/material.dart';

class MyNotes extends StatelessWidget {
  List<ToDos>  todos = [
    ToDos("Ejemplo", "Fragmento de la nota de ejemplo que se mos.."),
    ToDos("Tarea de PDM", "Terminar el último cap. del curso para recibir cer..."),

  ];
  MyNotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: todos.length,
        itemBuilder:(context, index) {
          return ListTile(
            //leading: Icon(Icons.note_rounded),
            title: Text(todos[index].titulo),
            subtitle: Text(todos[index].descripcion),
            trailing: const Icon(Icons.navigate_next_rounded),
            onTap: (){
              print("Abriendo Nota...");
            },
            onLongPress: (){
              print(todos[index].titulo);
              Navigator.of(context).pushNamed('/ShowNotes');
            },
          );
        }
    );
  }
}
//TODO: agregar boon de opciones para al seleccionar, poder editar, ver o borrar
class ToDos{
  late String titulo;
  late String descripcion;
  ToDos(this.titulo, this.descripcion);
}
