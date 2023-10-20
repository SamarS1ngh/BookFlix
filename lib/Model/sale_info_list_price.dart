import 'package:freezed_annotation/freezed_annotation.dart';

part 'sale_info_list_price.freezed.dart';
part 'sale_info_list_price.g.dart';

@freezed
class SaleInfoListPrice with _$SaleInfoListPrice {
  const factory SaleInfoListPrice({
    required double amount,
    required String currencyCode,
  }) = _SaleInfoListPrice;

  factory SaleInfoListPrice.fromJson(Map<String, dynamic> json) =>
      _$SaleInfoListPriceFromJson(json);
}
