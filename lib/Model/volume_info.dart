import 'package:bookflix/Model/panelization_summary.dart';
import 'package:bookflix/Model/reading_modes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

import 'enums.dart';
import 'image_links.dart';
import 'industry_identifier.dart';

part 'volume_info.freezed.dart';
part 'volume_info.g.dart';

@freezed
class VolumeInfo with _$VolumeInfo {
  const factory VolumeInfo({
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "subtitle") String? subtitle,
    @JsonKey(name: "authors") List<String>? authors,
    @JsonKey(name: "publisher") String? publisher,
    @JsonKey(name: "publishedDate") String? publishedDate,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "industryIdentifiers")
    List<IndustryIdentifier>? industryIdentifiers,
    @JsonKey(name: "readingModes") ReadingModes? readingModes,
    @JsonKey(name: "pageCount") int? pageCount,
    @JsonKey(name: "printType") PrintType? printType,
    @JsonKey(name: "categories") List<String>? categories,
    @JsonKey(name: "averageRating") double? averageRating,
    @JsonKey(name: "ratingsCount") int? ratingsCount,
    @JsonKey(name: "maturityRating") MaturityRating? maturityRating,
    @JsonKey(name: "allowAnonLogging") bool? allowAnonLogging,
    @JsonKey(name: "contentVersion") String? contentVersion,
    @JsonKey(name: "panelizationSummary")
    PanelizationSummary? panelizationSummary,
    @JsonKey(name: "comicsContent") bool? comicsContent,
    @JsonKey(name: "imageLinks") ImageLinks? imageLinks,
    @JsonKey(name: "language") Language? language,
    @JsonKey(name: "previewLink") String? previewLink,
    @JsonKey(name: "infoLink") String? infoLink,
    @JsonKey(name: "canonicalVolumeLink") String? canonicalVolumeLink,
  }) = _VolumeInfo;

  factory VolumeInfo.fromJson(Map<String, dynamic> json) =>
      _$VolumeInfoFromJson(json);
  // Map<String, dynamic> toJson() => _$VolumeInfoToJson(this);
}
