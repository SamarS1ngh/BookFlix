import 'package:bookflix/Model/panelization_summary.dart';
import 'package:bookflix/Model/reading_modes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'image_links.dart';
import 'industry_identifier.dart';

part 'volume_info.freezed.dart';
part 'volume_info.g.dart';

@freezed
class VolumeInfo with _$VolumeInfo {
  const factory VolumeInfo({
    required String title,
    String? subtitle,
    required List<String> authors,
    String? publisher,
    String? publishedDate,
    String? description,
    List<IndustryIdentifier>? industryIdentifiers,
    required ReadingModes readingModes,
    required int pageCount,
    required String printType,
    required String maturityRating,
    required bool allowAnonLogging,
    required String contentVersion,
    ImageLinks? imageLinks,
    required String language,
    required String previewLink,
    required String infoLink,
    required String canonicalVolumeLink,
    List<String>? categories,
    double? averageRating,
    int? ratingsCount,
  }) = _VolumeInfo;

  factory VolumeInfo.fromJson(Map<String, dynamic> json) =>
      _$VolumeInfoFromJson(json);
}
