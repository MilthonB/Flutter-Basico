
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('cards'),),
      body: ListView(
        padding: EdgeInsets.all(25.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2()
        ],
      ),
    );
  }
  
  Widget _cardTipo1() {

    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album,color: Colors.blue,),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text('Soy un subtitulo de esta tarjeta sirvo como ejemplo para ver los espacios '),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: (){}, child: Text('Cancel')),
              TextButton(onPressed: (){}, child: Text('Ok')),
            ],
          )
        ],
      ),
    );

  }
  
  Widget _cardTipo2() {

    return Card(
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'), 
            image: NetworkImage('https://cdn1.epicgames.com/ue/product/Screenshot/RealisticLandscapes%20125-1920x1080-a125dbb0885e785c4fdafbf130b056b8.png?resize=1&w=1920'),
            fadeInDuration: Duration( milliseconds: 200 ),
            height: 300.0,
            fit: BoxFit.cover,
            ),
          //Image(image: ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Contenedor'),
          )
        ],
      ),
    );
  }
}