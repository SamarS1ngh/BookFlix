import 'package:bookflix/Model/sale_info_list_price.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'offer.dart';
part 'sale_info.freezed.dart';
part 'sale_info.g.dart';

@freezed
class SaleInfo with _$SaleInfo {
  const factory SaleInfo({
    required String country,
    required String saleability,
    required bool isEbook,
    SaleInfoListPrice? listPrice,
    SaleInfoListPrice? retailPrice,
    String? buyLink,
    List<Offer>? offers,
  }) = _SaleInfo;

  factory SaleInfo.fromJson(Map<String, dynamic> json) =>
      _$SaleInfoFromJson(json);
}
