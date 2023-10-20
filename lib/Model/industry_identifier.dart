import 'package:freezed_annotation/freezed_annotation.dart';

import 'dart:convert';

part 'industry_identifier.freezed.dart';
part 'industry_identifier.g.dart';

@freezed
class IndustryIdentifier with _$IndustryIdentifier {
  const factory IndustryIdentifier({
    required String type,
    required String identifier,
  }) = _IndustryIdentifier;

  factory IndustryIdentifier.fromJson(Map<String, dynamic> json) =>
      _$IndustryIdentifierFromJson(json);
}
