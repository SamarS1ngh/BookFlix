import 'package:freezed_annotation/freezed_annotation.dart';

import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
part 'image_links.freezed.dart';
part 'image_links.g.dart';

@freezed
class ImageLinks with _$ImageLinks {
  const factory ImageLinks({
    @JsonKey(name: "smallThumbnail") String? smallThumbnail,
    @JsonKey(name: "thumbnail") String? thumbnail,
  }) = _ImageLinks;

  factory ImageLinks.fromJson(Map<String, dynamic> json) =>
      _$ImageLinksFromJson(json);
  // Map<String, dynamic> toJson() => _$ImageLinksToJson(this);
}
