import 'package:freezed_annotation/freezed_annotation.dart';

import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
part 'pdf.freezed.dart';
part 'pdf.g.dart';

@freezed
class Pdf with _$Pdf {
  const factory Pdf({
    @JsonKey(name: "isAvailable") required bool isAvailable,
    @JsonKey(name: "acsTokenLink") String? acsTokenLink,
  }) = _Pdf;

  factory Pdf.fromJson(Map<String, dynamic> json) => _$PdfFromJson(json);
  // Map<String, dynamic> toJson() => _$PdfToJson(this);
}
