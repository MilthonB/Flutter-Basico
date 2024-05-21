

import 'package:flutter/material.dart';


class AvatarPage extends StatelessWidget {
  const AvatarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar'),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 15.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://image.api.playstation.com/vulcan/img/rnd/202010/2716/LQm890FA1pIAEoiU7HJQm1S5.png'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 15.0),
            child: CircleAvatar(
              child: Text('MB'),
              backgroundColor: Colors.blue, // Fondo
              foregroundColor: Colors.white,//las letras 
            ),
          )
        ],
        ),
        body: Card(
      clipBehavior: Clip.antiAlias, // para qe nada se salga de la tarjeta y respete los bordes de la card
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'), 
            image: NetworkImage('https://image.api.playstation.com/vulcan/img/rnd/202010/2716/LQm890FA1pIAEoiU7HJQm1S5.png'),
            fadeInDuration: Duration( milliseconds: 200 ),
            height: 300.0,
            fit: BoxFit.cover,
            ),
          //Image(image: ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Ires man '),
          )
        ],
      ),
    )
    );
  }
}


