import 'package:componentes/src/pages/animated_container.dart';
import 'package:componentes/src/pages/input_page.dart';
import 'package:componentes/src/pages/listview_page.dart';
import 'package:componentes/src/pages/slider_page.dart';
import 'package:flutter/material.dart';

import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/avatar_page.dart';
import 'package:componentes/src/pages/card_page.dart';

Map<String, WidgetBuilder> getRoutes(){
  return <String, WidgetBuilder> { 
          'alert'               : (context) => AlertPage(),
          'avatar'              : (context) => AvatarPage(),
          'card'                : (context) => CardPage(),
          'animatedContainer'   : (context) => AnimatedContainerPage(),
          'input'               : (context) => InputPage(),
          'slider'              : (context) => SliderPage(),
          'listview'            : (context) => ListviewPage(),
    };
}   

