import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'conferences.g.dart';

class Conference {
  String title;
  String id;
  String city;
  DateTime startTime;
  DateTime endTime;
}

@GenSerializer(fieldFormat: FieldFormat.snakeCase, fields: {
  'startTime': const Property<DateTime>(processor: const DateTimeProcessor()),
  'endTime': const Property<DateTime>(processor: const DateTimeProcessor()),
})
class ConferenceJsonSerializer extends Serializer<Conference>
    with _$ConferenceJsonSerializer {
  Conference createModel() => new Conference();
}
