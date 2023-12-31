import 'package:bookflix/Model/panelization_summary.dart';
import 'package:bookflix/Model/reading_modes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

import 'image_links.dart';
import 'industry_identifier.dart';

part 'offer_list_price.freezed.dart';
part 'offer_list_price.g.dart';

@freezed
class OfferListPrice with _$OfferListPrice {
  const factory OfferListPrice({
    required int amountInMicros,
    required String currencyCode,
  }) = _OfferListPrice;

  factory OfferListPrice.fromJson(Map<String, dynamic> json) =>
      _$OfferListPriceFromJson(json);
}
