// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icon_string_utils.dart';
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

    //print(menuProvider.opciones);

      List<Widget> ll = <Widget>[];

    return FutureBuilder(
        future: menuProvider.cargarData(), 
        initialData: [],
        builder:(BuildContext context, AsyncSnapshot snapshot){
          
          //_listItems(snapshot.data);
          return ListView(children: _listItems(snapshot.data, context),);
        });

  }
  
  List<Widget> _listItems(List<dynamic> data, BuildContext context) {

    List<Widget> listWid = <Widget>[];

    data.forEach((data) {
      final tempWidget = Column(
          children: [
            ListTile(
              title: Text(data['texto']),
              subtitle: (Text('Subtitle')),
              leading: getIcon(data['icon']),
              trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue,),
              onTap: (){
                
                // final route = MaterialPageRoute(
                //   builder: (context,){
                //     return AlertPage();
                //   });
                Navigator.pushNamed(context, data['ruta']);
              },
            ),
          ],
        );

        listWid.add(tempWidget);
    
    });
    return listWid;

  }
}
