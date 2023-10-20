import 'package:bookflix/Model/panelization_summary.dart';
import 'package:bookflix/Model/reading_modes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

import 'offer_list_price.dart';

part 'offer.freezed.dart';
part 'offer.g.dart';

@freezed
class Offer with _$Offer {
  const factory Offer({
    required int finskyOfferType,
    required OfferListPrice listPrice,
    required OfferListPrice retailPrice,
  }) = _Offer;

  factory Offer.fromJson(Map<String, dynamic> json) => _$OfferFromJson(json);
}
