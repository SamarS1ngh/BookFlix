import 'package:freezed_annotation/freezed_annotation.dart';

import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
part 'panelization_summary.freezed.dart';
part 'panelization_summary.g.dart';

@freezed
class PanelizationSummary with _$PanelizationSummary {
  const factory PanelizationSummary({
    required bool containsEpubBubbles,
    required bool containsImageBubbles,
  }) = _PanelizationSummary;

  factory PanelizationSummary.fromJson(Map<String, dynamic> json) =>
      _$PanelizationSummaryFromJson(json);
}
