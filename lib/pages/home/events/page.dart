import 'package:flutter/material.dart';
import 'dart:async';
import 'package:hasgeek_mobile/api/hg_api.dart' show HgApi;
import 'package:hasgeek_mobile/models/conferences.dart';
import 'package:hasgeek_mobile/models/hasgeek_response.dart';
import 'package:http/http.dart';

class EventsPage extends StatefulWidget {
  @override
  _EventsPageState createState() => new _EventsPageState();

}

class _EventsPageState extends State<EventsPage> {
  List<Conference> conferences = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[Text('events')],
              ),
              new RaisedButton(
                onPressed: () => _loadApi(),
                child: new Text('events'),
              ),
              Expanded(
                child: ListView(
                  children: conferences.map(
                          (conf) => new Card(
                            child: new Container(
                              padding: EdgeInsets.all(10.0),
                              child: new Text(conf.title),
                            ),
                          )
                  ).toList() ,
                ),
              )
            ]
        ),
      ),
    );
  }
  _loadApi () {
    HgApi.getAll(new Client()).then((HasGeekResponse value) {
      setState(() {
        debugPrint(value.conferences.length.toString());
        conferences = value.conferences.reversed;
        conferences.forEach((c) {
          debugPrint(c.title);
        });
      });
    });

  }
}
