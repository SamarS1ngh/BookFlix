import 'package:freezed_annotation/freezed_annotation.dart';

import 'dart:convert';

import 'json_converter.dart';
import 'package:json_annotation/json_annotation.dart';
part 'industry_identifier.freezed.dart';
part 'industry_identifier.g.dart';

@freezed
class IndustryIdentifier with _$IndustryIdentifier {
  const factory IndustryIdentifier({
    @TypeConverter() @JsonKey(name: "type") Type? type,
    @JsonKey(name: "identifier") String? identifier,
  }) = _IndustryIdentifier;

  factory IndustryIdentifier.fromJson(Map<String, dynamic> json) =>
      _$IndustryIdentifierFromJson(json);
  // Map<String, dynamic> toJson() => _$IndustryIdentifierToJson(this);
}
