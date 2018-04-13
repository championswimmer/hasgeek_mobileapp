import 'package:flutter/material.dart';
import 'package:hasgeek_mobile/app_theme.dart';
import 'package:hasgeek_mobile/pages/home/conferences/page.dart';
import 'package:hasgeek_mobile/pages/home/events/page.dart';
import 'package:hasgeek_mobile/pages/home/main_drawer.dart';
import 'package:hasgeek_mobile/pages/home/talkfunnel/page.dart';

enum PAGES {
  EVENTS, CONFERENCES, TALKFUNNEL
}

class HomePage extends StatelessWidget {
  PAGES innerPage = PAGES.EVENTS;

  static Widget getInnerPage(PAGES page) {
    switch(page) {
      case PAGES.EVENTS: return new EventsPage();
      case PAGES.CONFERENCES: return ConferencesPage();
      case PAGES.TALKFUNNEL: return TalkfunnelPage();
    }
    return new EventsPage();
  }

  HomePage({this.innerPage});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: appThemeData.primaryColor,
        title: const Text('HasGeek'),
      ),
      drawer: new MainDrawer(),
      body: getInnerPage(innerPage),
    );
  }
}