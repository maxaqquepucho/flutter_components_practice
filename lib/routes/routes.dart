import 'package:flutter/material.dart';
import 'package:flutter_components/pages/alert_page.dart';
import 'package:flutter_components/pages/avatar_page.dart';
import 'package:flutter_components/pages/card_page.dart';
import 'package:flutter_components/pages/home_page.dart';
import 'package:flutter_components/pages/animated_container_page.dart';
import 'package:flutter_components/pages/input_page.dart';
import 'package:flutter_components/pages/listview_page.dart';
import 'package:flutter_components/pages/slider_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (context) => HomePage(),
    'avatar': (context) => AvatarPage(),
    'alert': (context) => AlertPage(),
    'card': (context) => CardPage(),
    'animatedContainer': (context) => AnimatedContainerPage(),
    'inputs': (context) => InputPage(),
    'slider': (context) => SliderPage(),
    'list': (context) => ListaPage(),
  };
}
