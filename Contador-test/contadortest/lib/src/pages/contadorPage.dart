
import 'package:flutter/material.dart';


class Contadorpage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ContadorPageState();
  }
}


class _ContadorPageState extends State<Contadorpage>{

  int _cont = 0;
  final txtStyle = TextStyle(fontSize: 40);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contador'), centerTitle: true,),
      body: Center(
        child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Contador de clicks',style: txtStyle),
          Text('$_cont',style: txtStyle,)
        ],
      ),
      ),
      floatingActionButton: _createButton(),
    );
  }
  
  Widget _createButton(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FloatingActionButton(onPressed: _valueZero, child: Icon(Icons.exposure_zero),),
        FloatingActionButton(onPressed: _removeOne, child: Icon(Icons.remove),),
        FloatingActionButton(onPressed: _addOne, child: Icon(Icons.add),)
      ],
    );
  }

  void _valueZero(){
    setState(() => _cont =0 );
  }

  void _removeOne(){
    setState(() {
      if(  _cont == 0 ){
        _cont = 0;
        return;
      }

      _cont--;
    });
  }

  void _addOne(){
    setState(() => _cont++);
  }


}