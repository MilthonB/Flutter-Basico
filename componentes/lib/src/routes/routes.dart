import 'package:flutter/material.dart';

import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/avatar_page.dart';
import 'package:componentes/src/pages/card_page.dart';

Map<String, WidgetBuilder> getRoutes(){
  return <String, WidgetBuilder> { 
          'alert'  : (context) => AlertPage(),
          'avatar' : (context) => AvatarPage(),
          'card'   : (context) => CardPage()
    };
}   

