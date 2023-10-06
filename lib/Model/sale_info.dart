import 'package:bookflix/Model/sale_info_list_price.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'dart:convert';

import 'enums.dart';
import 'package:json_annotation/json_annotation.dart';

import 'offer.dart';
part 'sale_info.freezed.dart';
part 'sale_info.g.dart';

@freezed
class SaleInfo with _$SaleInfo {
  const factory SaleInfo({
    @JsonKey(name: "country") Country? country,
    @JsonKey(name: "saleability") Saleability? saleability,
    @JsonKey(name: "isEbook") bool? isEbook,
    @JsonKey(name: "listPrice") SaleInfoListPrice? listPrice,
    @JsonKey(name: "retailPrice") SaleInfoListPrice? retailPrice,
    @JsonKey(name: "buyLink") String? buyLink,
    @JsonKey(name: "offers") List<Offer>? offers,
  }) = _SaleInfo;

  factory SaleInfo.fromJson(Map<String, dynamic> json) =>
      _$SaleInfoFromJson(json);
  // Map<String, dynamic> tojson() => _$SaleInfoToJson(this);
}
