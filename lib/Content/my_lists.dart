import 'package:flutter/material.dart';

class MyLists extends StatelessWidget {
  List<ToDos> _todos = [
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
            leading: Icon(Icons.list),
            title: Text(_todos[index].titulo),
            subtitle: Text(_todos[index].descripcion),
            trailing: Icon(Icons.navigate_next_rounded),
            onTap: (){
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
_borrarLista(context, ToDos){
  showDialog(context: context, builder: ( _ ) => AlertDialog(
    title: Text("Eliminar Lista"),
    content: Text("La lista "+ToDos.titulo +" será eliminada"),
    actions: [
      TextButton(onPressed: (){
        Navigator.pop(context);
      }, child: Text("Cancelar")),
      TextButton(onPressed: (){
        print("Borraste la lista"+ToDos.titulo);
        Navigator.pop(context);
      }, child: Text("Confirmar"))
    ],
  ));
}
class ToDos{
  late String titulo;
  late String descripcion;

  ToDos(titulo, descripcion){
    this.titulo = titulo;
    this.descripcion = descripcion;
  }
}
