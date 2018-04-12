import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:jsonplaceholder/pages/home/main.dart';

void main() => runApp(new MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'Hasgeek',
  home: new HomePage(),
  routes: <String, WidgetBuilder> {
    HomePage.routeName: (BuildContext context) => new HomePage()
  },
));

