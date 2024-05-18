import 'package:componentes/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Componentes'),),
      body: _list(),
    );
  }
  
  Widget _list() {

    menuProvider.cargarData();
    return ListView(
      children: _listItems(),
    );

  }
  
  List<Widget> _listItems() {

    return [
      ListTile(title: Text('Hola mundo'),)
    ];

  }
}
