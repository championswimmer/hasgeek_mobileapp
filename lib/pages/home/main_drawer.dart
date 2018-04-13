import 'package:flutter/material.dart';
import 'package:hasgeek_mobile/pages/home/main.dart';

class MainDrawer extends Drawer {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new Column(
        children: <Widget>[
          /**
           * Drawer Header
           */
          new UserAccountsDrawerHeader(
            accountName: const Text('Guest'),
            accountEmail: const Text('guest@hasgeek.com'),
            decoration: BoxDecoration(color: Colors.deepOrange[800]),
            margin: EdgeInsets.zero,
            onDetailsPressed: () => {},
          ),

          /**
           * Drawer List
           */
          new DrawerListItem(
            iconData: Icons.event,
            titleText: 'Events',
            color: Theme.of(context).accentColor,
            onTap: () => _onDrawerItemTap(context, '/events'),
          ),
          new DrawerListItem(
            iconData: Icons.nature_people,
            titleText: 'Conferences',
            color: Theme.of(context).accentColor,
            onTap: () => _onDrawerItemTap(context, '/conferences'),
          ),
          new DrawerListItem(
            iconData: Icons.filter_list,
            titleText: 'Talkfunnel',
            color: Theme.of(context).accentColor,
            onTap: () => _onDrawerItemTap(context, '/talkfunnel'),
          )
        ],
      ),
    );
  }

  _onDrawerItemTap(BuildContext context, String route) {
    Navigator.of(context).pop();
    Navigator.of(context).pushReplacementNamed(route);
  }
}

class DrawerListItem extends ListTile {
  DrawerListItem({
    IconData iconData,
    String titleText,
    Function onTap,
    Color color,
  }) : super(
            leading: new Icon(
              iconData,
              color: color,
            ),
            title: new Text(titleText),
            onTap: onTap);
}
