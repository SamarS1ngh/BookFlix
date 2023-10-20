import 'package:bookflix/Model/pdf.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

import 'epub.dart';

part 'access_info.freezed.dart';
part 'access_info.g.dart';

@freezed
class AccessInfo with _$AccessInfo {
  const factory AccessInfo({
    required String country,
    required String viewability,
    required bool embeddable,
    required bool publicDomain,
    required String textToSpeechPermission,
    required Epub epub,
    required Epub pdf,
    required String webReaderLink,
    required String accessViewStatus,
    required bool quoteSharingAllowed,
  }) = _AccessInfo;

  factory AccessInfo.fromJson(Map<String, dynamic> json) =>
      _$AccessInfoFromJson(json);
}
