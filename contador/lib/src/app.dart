import "package:contador/src/pages/contado_page.dart";
//import "package:contador/src/pages/home_page.dart";
import "package:flutter/material.dart";

class MyApp extends StatelessWidget {
  // A cada clase que extienda tiene que tener un construcor con un parametro dentro que tiene que resivir de forma automatica
  // Este parametro es del padre y es la llave de este widget o mas bien el identificardor de este widget
  // Se recomienda usar const porque el contructor es inmutable
  const MyApp({super.key});

 @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ContadorPage(),
      debugShowCheckedModeBanner: false,
    );
    
  }
}
