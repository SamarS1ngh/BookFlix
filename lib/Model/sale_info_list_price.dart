import 'package:bookflix/Model/pdf.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

import 'enums.dart';
import 'epub.dart';

part 'sale_info_list_price.freezed.dart';
part 'sale_info_list_price.g.dart';

@freezed
class SaleInfoListPrice with _$SaleInfoListPrice {
  const factory SaleInfoListPrice({
    @JsonKey(name: "amount") required double amount,
    @JsonKey(name: "currencyCode") CurrencyCode? currencyCode,
  }) = _SaleInfoListPrice;

  factory SaleInfoListPrice.fromJson(Map<String, dynamic> json) =>
      _$SaleInfoListPriceFromJson(json);
}
