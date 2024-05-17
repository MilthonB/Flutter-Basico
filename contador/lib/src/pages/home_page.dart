import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  static const txtStyle = TextStyle( fontSize: 45 );
   
  @override
  Widget build(BuildContext context){
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () { 
          // ignore: avoid_print
          print('Hola mndo');
        },
        backgroundColor: Color.fromARGB(255, 42, 24, 180),
        child: const Icon(
          Icons.add,
          color: Color.fromRGBO(255, 255, 255, 1),
          ),
      ),
      appBar:AppBar(title: const Text('Titulo'),
      centerTitle: true,),
      body: const Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Numero de clicks',
          style: TextStyle( 
            fontSize: 45
           ),),
          Text('0',style: TextStyle( 
            fontSize: 35
           ),),
        ],
      ),),

    );
  }

}