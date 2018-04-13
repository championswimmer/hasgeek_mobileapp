import 'package:flutter/material.dart';
import 'package:hasgeek_mobile/app_theme.dart';
import 'package:hasgeek_mobile/pages/home/main_drawer.dart';

enum PAGES {
  EVENTS, CONFERENCES, TALKFUNNEL
}
String getPageName(PAGES page) {
  switch(page) {
    case PAGES.EVENTS: return 'events';
    case PAGES.CONFERENCES: return 'conferences';
    case PAGES.TALKFUNNEL: return 'funnel';
  }
  return 'events';
}
class HomePage extends StatelessWidget {
  PAGES innerPage = PAGES.EVENTS;

  HomePage({this.innerPage});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: appThemeData.primaryColor,
        title: const Text('HasGeek'),
      ),
      drawer: new MainDrawer(),
      body: new Container(
        child: new Center(
          child: new Text(getPageName(innerPage)),
        ),
      ),
    );
  }
}