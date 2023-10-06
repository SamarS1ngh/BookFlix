// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'industry_identifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IndustryIdentifierImpl _$$IndustryIdentifierImplFromJson(
        Map<String, dynamic> json) =>
    _$IndustryIdentifierImpl(
      type: _$JsonConverterFromJson<String, Type>(
          json['type'], const TypeConverter().fromJson),
      identifier: json['identifier'] as String?,
    );

Map<String, dynamic> _$$IndustryIdentifierImplToJson(
        _$IndustryIdentifierImpl instance) =>
    <String, dynamic>{
      'type': _$JsonConverterToJson<String, Type>(
          instance.type, const TypeConverter().toJson),
      'identifier': instance.identifier,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
