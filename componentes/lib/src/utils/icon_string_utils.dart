import 'package:flutter/material.dart';


final _Icon = <String, IconData>{
  'add_alert'    : Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open'  : Icons.folder_open,
  'donut_large'  : Icons.donut_large,
  'input'        : Icons.input,
  'tune'         : Icons.tune,
  'list'         : Icons.list_alt,
};


Icon getIcon(String nameIcon){

  return Icon(_Icon[nameIcon], color: Colors.blue,);

}




