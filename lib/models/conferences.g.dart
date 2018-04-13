// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conferences.dart';

// **************************************************************************
// Generator: JaguarSerializerGenerator
// **************************************************************************

abstract class _$ConferenceJsonSerializer implements Serializer<Conference> {
  @override
  Map<String, dynamic> toMap(Conference model,
      {bool withType: false, String typeKey}) {
    Map<String, dynamic> ret;
    if (model != null) {
      ret = <String, dynamic>{};
      setNullableValue(ret, 'title', model.title);
      setNullableValue(ret, 'id', model.id);
      setNullableValue(ret, 'city', model.city);
      setTypeKeyValue(typeKey, modelString(), withType, ret);
    }
    return ret;
  }

  @override
  Conference fromMap(Map<String, dynamic> map, {Conference model}) {
    if (map == null) {
      return null;
    }
    final obj = model ?? new Conference();
    obj.title = map['title'] as String;
    obj.id = map['id'] as String;
    obj.city = map['city'] as String;
    return obj;
  }

  @override
  String modelString() => 'Conference';
}
