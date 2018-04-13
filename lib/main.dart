import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hasgeek_mobile/app_theme.dart';
import 'package:hasgeek_mobile/pages/home/main.dart';


void main() => runApp(new MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'HasGeek',
  home: new HomePage(innerPage: PAGES.EVENTS),
  theme: appThemeData,
  routes: <String, WidgetBuilder> {
    '/events': (BuildContext context) => new HomePage(innerPage: PAGES.EVENTS),
    '/conferences': (context) => new HomePage(innerPage: PAGES.CONFERENCES),
    '/talkfunnel': (context) => new HomePage(innerPage: PAGES.TALKFUNNEL,)
  },
));

