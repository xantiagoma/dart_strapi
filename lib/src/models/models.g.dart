// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Entry _$_$_EntryFromJson(Map<String, dynamic> json) {
  return _$_Entry(
    collectionName: json['collectionName'] as String,
    id: Identifier.fromJson(json['id'] as Map<String, dynamic>),
    data: json['data'],
  );
}

Map<String, dynamic> _$_$_EntryToJson(_$_Entry instance) => <String, dynamic>{
      'collectionName': instance.collectionName,
      'id': instance.id,
      'data': instance.data,
    };

_$IntIdentifier _$_$IntIdentifierFromJson(Map<String, dynamic> json) {
  return _$IntIdentifier(
    json['id'] as int,
  );
}

Map<String, dynamic> _$_$IntIdentifierToJson(_$IntIdentifier instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$StringIdentifier _$_$StringIdentifierFromJson(Map<String, dynamic> json) {
  return _$StringIdentifier(
    json['id'] as String,
  );
}

Map<String, dynamic> _$_$StringIdentifierToJson(_$StringIdentifier instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
