import 'package:freezed_annotation/freezed_annotation.dart';

import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
part 'reading_modes.freezed.dart';
part 'reading_modes.g.dart';

@freezed
class ReadingModes with _$ReadingModes {
  const factory ReadingModes({
    required bool text,
    required bool image,
  }) = _ReadingModes;

  factory ReadingModes.fromJson(Map<String, dynamic> json) =>
      _$ReadingModesFromJson(json);
}
