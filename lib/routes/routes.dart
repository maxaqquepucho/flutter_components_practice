import 'package:flutter/material.dart';
import 'package:flutter_components/pages/alert_page.dart';
import 'package:flutter_components/pages/avatar_page.dart';
import 'package:flutter_components/pages/card_page.dart';
import 'package:flutter_components/pages/home_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (context) => HomePage(),
    'avatar': (context) => AvatarPage(),
    'alert': (context) => AlertPage(),
    'card': (context) => CardPage(),
  };
}
