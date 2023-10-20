// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_info_list_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaleInfoListPriceImpl _$$SaleInfoListPriceImplFromJson(
        Map<String, dynamic> json) =>
    _$SaleInfoListPriceImpl(
      amount: (json['amount'] as num).toDouble(),
      currencyCode: json['currencyCode'] as String,
    );

Map<String, dynamic> _$$SaleInfoListPriceImplToJson(
        _$SaleInfoListPriceImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currencyCode': instance.currencyCode,
    };
