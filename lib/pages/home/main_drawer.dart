import 'package:flutter/material.dart';

class MainDrawer extends Drawer {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new Column(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text('Guest'),
            accountEmail: new Text('guest@hasgeek.com'),
            decoration: BoxDecoration(color: Colors.deepOrange[800]),
            margin: EdgeInsets.zero,
          )
        ],
      ),
    );
  }
}
