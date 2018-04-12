import 'package:flutter/material.dart';
import 'package:jsonplaceholder/pages/home/main_drawer.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.deepPurple,
        title: new Text('HasGeek'),
      ),
      drawer: new MainDrawer(),
    );
  }
}