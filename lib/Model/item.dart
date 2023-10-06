import 'package:bookflix/Model/sale_info.dart';
import 'package:bookflix/Model/volume_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'dart:convert';

import 'access_info.dart';
import 'enums.dart';
import 'package:json_annotation/json_annotation.dart';
part 'item.freezed.dart';
part 'item.g.dart';

@freezed
class Item with _$Item {
  const factory Item({
    @JsonKey(name: "kind") required Kind kind,
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "etag") required String etag,
    @JsonKey(name: "selfLink") required String selfLink,
    @JsonKey(name: "volumeInfo") required VolumeInfo volumeInfo,
    @JsonKey(name: "saleInfo") required SaleInfo saleInfo,
    @JsonKey(name: "accessInfo") required AccessInfo accessInfo,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
  //Map<String, dynamic> toJson() => _$ItemToJson(this);
}
