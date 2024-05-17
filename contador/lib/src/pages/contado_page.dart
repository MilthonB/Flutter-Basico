// ignore_for_file: sort_child_properties_last

import "package:flutter/material.dart";


class ContadorPage extends StatefulWidget{
  const ContadorPage({super.key});


  @override
  State<StatefulWidget> createState() {
    return _ContadorPageState();
  }


}

class _ContadorPageState extends State<ContadorPage> {
 
  // ignore: unused_field
  int _conteo = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      
      floatingActionButton: _crearBotones(),
      appBar:AppBar(title: const Text('Titulo'),
      centerTitle: true,),
      body:  Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Numero de clicks',
          style: TextStyle( 
            fontSize: 45
           ),),
          // ignore: unnecessary_brace_in_string_interps
          Text('${_conteo}',style: const TextStyle( 
            fontSize: 35
           ),),
        ],
      ),),

    );
  }

  Widget _crearBotones() {


    // ignore: prefer_const_constructors
    return Row(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        // ignore: prefer_const_constructors
        FloatingActionButton(onPressed:_add ,child: Icon(Icons.add),),
        // ignore: prefer_const_constructors
        FloatingActionButton(onPressed:_less ,child: Icon(Icons.remove),),
        // ignore: prefer_const_constructors
        FloatingActionButton(onPressed:_reset ,child: Icon(Icons.exposure_minus_1),),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      
    );


    //return const FloatingActionButton(onPressed:null ,child: Icon(Icons.add_alarm),);
  }

  void _add(){
    setState(() {
      _conteo++;
    });
  }

  void _less(){
    setState(() {
      if(_conteo != 0){
        _conteo--;
      }
    });
  }


  void _reset() {
    setState(() => _conteo = 0);
  }
}




