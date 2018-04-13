import 'package:hasgeek_mobile/models/conferences.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'hasgeek_response.g.dart';

class HasGeekResponse {
  List<Conference> conferences;
}

@GenSerializer(
  serializers: [ConferenceJsonSerializer]
)
class HasGeekResponseJsonSerializer extends Serializer<HasGeekResponse> with _$HasGeekResponseJsonSerializer {
  HasGeekResponse createModel() => new HasGeekResponse();
}