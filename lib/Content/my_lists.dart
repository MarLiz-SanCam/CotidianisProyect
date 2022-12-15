// ignore_for_file: must_be_immutable, avoid_print

import 'package:flutter/material.dart';

class MyLists extends StatelessWidget {
  final List<ToDos> _todos = [
    ToDos("Ejemplo", "descripcionDeLaLista"),
    ToDos("Despensa", "Para compras de la semana"),
    ToDos("Tareas Pendientes", "Actividades de la escuela por hacer"),
    ToDos("Entregas Pendientes", "Pedidos pendientes de entregar"),
  ];
  MyLists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: _todos.length,
        itemBuilder:(context, index) {
          return ListTile(
            leading: const Icon(Icons.list),
            title: Text(_todos[index].titulo),
            subtitle: Text(_todos[index].descripcion),
            trailing: const Icon(Icons.navigate_next_rounded),
            onTap: (){
              Navigator.of(context).pushNamed('/ShowList');
              print("Abriendo Lista para ver contenido...");
            },
            onLongPress: (){
              print(_todos[index].titulo);

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
