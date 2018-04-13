import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'conferences.g.dart';

class Conference {
  String title;
  String id;
  String city;

}

@GenSerializer()
class ConferenceJsonSerializer extends Serializer<Conference> with _$ConferenceJsonSerializer {
  Conference createModel() => new Conference();
}