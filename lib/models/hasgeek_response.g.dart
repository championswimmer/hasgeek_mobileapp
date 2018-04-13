// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hasgeek_response.dart';

// **************************************************************************
// Generator: JaguarSerializerGenerator
// **************************************************************************

abstract class _$HasGeekResponseJsonSerializer
    implements Serializer<HasGeekResponse> {
  final _conferenceJsonSerializer = new ConferenceJsonSerializer();

  @override
  Map<String, dynamic> toMap(HasGeekResponse model,
      {bool withType: false, String typeKey}) {
    Map<String, dynamic> ret;
    if (model != null) {
      ret = <String, dynamic>{};
      setNullableValue(
          ret,
          'conferences',
          nullableIterableMapper(
              model.conferences,
              (val) => _conferenceJsonSerializer.toMap(val as Conference,
                  withType: withType, typeKey: typeKey)));
      setTypeKeyValue(typeKey, modelString(), withType, ret);
    }
    return ret;
  }

  @override
  HasGeekResponse fromMap(Map<String, dynamic> map, {HasGeekResponse model}) {
    if (map == null) {
      return null;
    }
    final obj = model ?? new HasGeekResponse();
    obj.conferences = nullableIterableMapper<Conference>(
        map['conferences'] as Iterable,
        (val) =>
            _conferenceJsonSerializer.fromMap(val as Map<String, dynamic>));
    return obj;
  }

  @override
  String modelString() => 'HasGeekResponse';
}
