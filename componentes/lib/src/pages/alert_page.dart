
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alertas'),),

      body: Center(
        child: ElevatedButton(
          onPressed: () => mostrarAlerta(context), 
          child: Text('Mostrar alerta'),
          style:ElevatedButton.styleFrom(
            backgroundColor: Colors.white, // Este es para colorear lo que esta encima del fondo como el texto
            foregroundColor: Colors.blue // Este es el fondo 
          )
          ),
      ),


      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pop(context);
        },
        child: Icon(Icons.add_location),
        ),
    );
  }

  void mostrarAlerta( BuildContext context ){

    showDialog(
      context: context,
      barrierDismissible: true, 

      builder: (context){
        return AlertDialog(
          // EL alerta ya tiene bordes
          //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          title: Text('Alerta'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Esta es una prueba de una alerta'),
              FlutterLogo(size: 150.0,)
            ],
          ),
          actions: [
            ElevatedButton(onPressed: () => Navigator.of(context).pop(), child: Text('data')),
            TextButton(onPressed:() => Navigator.of(context).pop(), child: Text('data'))
          ],
        );
      },
      );


  }
}