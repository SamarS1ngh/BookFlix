import 'package:bookflix/Model/pdf.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

import 'enums.dart';
import 'epub.dart';

part 'access_info.freezed.dart';
part 'access_info.g.dart';

@freezed
class AccessInfo with _$AccessInfo {
  const factory AccessInfo({
    @JsonKey(name: "country") Country? country,
    @JsonKey(name: "viewability") Viewability? viewability,
    @JsonKey(name: "embeddable") bool? embeddable,
    @JsonKey(name: "publicDomain") bool? publicDomain,
    @JsonKey(name: "textToSpeechPermission")
    TextToSpeechPermission? textToSpeechPermission,
    @JsonKey(name: "epub") Epub? epub,
    @JsonKey(name: "pdf") Pdf? pdf,
    @JsonKey(name: "webReaderLink") String? webReaderLink,
    @JsonKey(name: "accessViewStatus") AccessViewStatus? accessViewStatus,
    @JsonKey(name: "quoteSharingAllowed") bool? quoteSharingAllowed,
  }) = _AccessInfo;

  factory AccessInfo.fromJson(Map<String, dynamic> json) =>
      _$AccessInfoFromJson(json);
//  Map<String, dynamic> toJson() => _$AccessInfoToJson(this);
}
