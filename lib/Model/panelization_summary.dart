import 'package:freezed_annotation/freezed_annotation.dart';

import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
part 'panelization_summary.freezed.dart';
part 'panelization_summary.g.dart';

@freezed
class PanelizationSummary with _$PanelizationSummary {
  const factory PanelizationSummary({
    @JsonKey(name: "containsEpubBubbles") bool? containsEpubBubbles,
    @JsonKey(name: "containsImageBubbles") bool? containsImageBubbles,
    @JsonKey(name: "imageBubbleVersion") String? imageBubbleVersion,
  }) = _PanelizationSummary;

  factory PanelizationSummary.fromJson(Map<String, dynamic> json) =>
      _$PanelizationSummaryFromJson(json);

  //Map<String, dynamic> toJson() => _$PanelizationSummaryToJson(this);
}
