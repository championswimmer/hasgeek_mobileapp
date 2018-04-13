import 'dart:convert';
import 'package:http/http.dart';
import 'dart:async';
import 'package:hasgeek_mobile/models/hasgeek_response.dart';
import 'package:hasgeek_mobile/models/conferences.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';

class HgApi {
  static Future<HasGeekResponse> getAll(Client client) async {
    final response = await client.get('https://hasgeek.github.io/events/api/all.json');
    final jsonRepo = new JsonRepo()..add(HasGeekResponseJsonSerializer());
    HasGeekResponse hgr = jsonRepo.deserialize(response.body, type: HasGeekResponse);
    return(hgr);
  }

}