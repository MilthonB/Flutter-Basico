// ignore_for_file: use_key_in_widget_constructors, unused_element, non_constant_identifier_names

import 'package:flutter/material.dart';


class HomePageTemp extends StatelessWidget {

  final opciones = ['Uno','Dos','tres'];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes temp',
        style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),),
        backgroundColor: Color.fromRGBO(0, 39, 123, 1),
        ),
      body: ListView(
        children: _CreateItemsCorto(),
      ),
    );
  }

  List<Widget> _createItems() {
    //List<Widget> lista =  List<Widget>.empty();
    List<Widget> lista =  <Widget>[];
    for (String opt in opciones) {
      final witem = ListTile(
          title: Text(opt),
        );
      //.. es el operador en cascada para agregar informacion en las listas.
      lista..add(witem)
           ..add(Divider());
      
    }
    return lista;
  }

  List<Widget> _CreateItemsCorto(){

    return opciones.map(( String elemt ){
      return Column(
        children: [
          ListTile(
            title: Text(elemt),
            subtitle: Text('Ejemplo de subtitle'),
            leading: Icon(Icons.house),
            trailing: Icon(Icons.exit_to_app),
            onTap: (){},
            ),
            
          Divider()
        ],
      );
    }).toList();

  }
}
