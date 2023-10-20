import 'package:bookflix/Model/sale_info.dart';
import 'package:bookflix/Model/volume_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'dart:convert';

import 'access_info.dart';

import 'search_info.dart';
part 'item.freezed.dart';
part 'item.g.dart';

@freezed
class Item with _$Item {
  const factory Item({
    required String kind,
    required String id,
    required String etag,
    required String selfLink,
    required VolumeInfo volumeInfo,
    required SaleInfo saleInfo,
    required AccessInfo accessInfo,
    SearchInfo? searchInfo,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}
