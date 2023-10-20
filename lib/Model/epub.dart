import 'package:freezed_annotation/freezed_annotation.dart';

import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
part 'epub.freezed.dart';
part 'epub.g.dart';

@freezed
class Epub with _$Epub {
  const factory Epub({
    required bool isAvailable,
    String? acsTokenLink,
  }) = _Epub;

  factory Epub.fromJson(Map<String, dynamic> json) => _$EpubFromJson(json);
}
