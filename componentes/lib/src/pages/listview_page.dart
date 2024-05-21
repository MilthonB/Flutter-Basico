import 'dart:async';

import 'package:flutter/material.dart';


class ListviewPage extends StatefulWidget {
  const ListviewPage({super.key});

  @override
  State<ListviewPage> createState() => _ListviewPageState();
}

class _ListviewPageState extends State<ListviewPage> {
  
  ScrollController _scrolControll = ScrollController();

  List<int> _listaNumeros = [];
  int _ultimoItem = 0;

  bool _isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _agregar10();

    //print(_scrolControll.position.pixels);
    _scrolControll.addListener((){
      
      if(_scrolControll.position.pixels == _scrolControll.position.maxScrollExtent){

        fetchData();

      }

    });

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrolControll.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView'),),
      body: Stack(
        children: [
          _crearLista(),
          _crearLoading()
        ]
        ,)
    );
  }

  Future _obtenerPagina1() async{

    final duration = Duration(seconds: 2);
    Timer(duration, (){
      _listaNumeros.clear();
      _ultimoItem++;
      _agregar10();
    });

    return Future.delayed(duration);
  }
  
  Widget _crearLista() {
    return RefreshIndicator(
      onRefresh: _obtenerPagina1,
      child: ListView.builder(
        controller: _scrolControll,
        itemCount: _listaNumeros.length,
        itemBuilder: (BuildContext context, int index) {
          final imagen = _listaNumeros[index];
          return FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'), 
            image: NetworkImage('https://picsum.photos/500/300?random=${imagen}'),
            fit: BoxFit.contain,
            );
        },
      ),
    );
  }
  void _agregar10() {

    for (var i = 0; i < 10; i++) {
      _ultimoItem++;
      _listaNumeros.add(_ultimoItem);
    }
  setState(() {
    
  });

  }

  Future fetchData() async{

    _isLoading = true;
    setState(() {});

    return Timer(Duration(seconds: 2), respuestaGHttp);

  }

  void respuestaGHttp(){
    _isLoading = false;

    _scrolControll.animateTo(
      _scrolControll.position.pixels + 100,
      curve: Curves.fastOutSlowIn,
      duration: Duration(milliseconds: 250)
    );

    _agregar10();
  }
  
  Widget _crearLoading() {

    if( _isLoading ){
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                color: Colors.blue,
              )
            ],
          ),
          SizedBox(height: 20.0,)
        ],
      );
    }else{
      return Container();
    }

  }
}