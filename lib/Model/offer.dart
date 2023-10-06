import 'package:bookflix/Model/panelization_summary.dart';
import 'package:bookflix/Model/reading_modes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

import 'enums.dart';
import 'image_links.dart';
import 'industry_identifier.dart';
import 'offer_list_price.dart';

part 'offer.freezed.dart';
part 'offer.g.dart';

@freezed
class Offer with _$Offer {
  const factory Offer({
    @JsonKey(name: "finskyOfferType") int? finskyOfferType,
    @JsonKey(name: "listPrice") OfferListPrice? listPrice,
    @JsonKey(name: "retailPrice") OfferListPrice? retailPrice,
  }) = _Offer;

  factory Offer.fromJson(Map<String, dynamic> json) => _$OfferFromJson(json);
}
