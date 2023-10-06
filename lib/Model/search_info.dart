import 'package:bookflix/Model/panelization_summary.dart';
import 'package:bookflix/Model/reading_modes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

import 'enums.dart';
import 'image_links.dart';
import 'industry_identifier.dart';

part 'search_info.freezed.dart';
part 'search_info.g.dart';

@freezed
class SearchInfo with _$SearchInfo {
  const factory SearchInfo({
    @JsonKey(name: "textSnippet") String? textSnippet,
  }) = _SearchInfo;

  factory SearchInfo.fromJson(Map<String, dynamic> json) =>
      _$SearchInfoFromJson(json);
}
