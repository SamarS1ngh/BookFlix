// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_list_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OfferListPriceImpl _$$OfferListPriceImplFromJson(Map<String, dynamic> json) =>
    _$OfferListPriceImpl(
      amountInMicros: json['amountInMicros'] as int?,
      currencyCode:
          $enumDecodeNullable(_$CurrencyCodeEnumMap, json['currencyCode']),
    );

Map<String, dynamic> _$$OfferListPriceImplToJson(
        _$OfferListPriceImpl instance) =>
    <String, dynamic>{
      'amountInMicros': instance.amountInMicros,
      'currencyCode': _$CurrencyCodeEnumMap[instance.currencyCode],
    };

const _$CurrencyCodeEnumMap = {
  CurrencyCode.INR: 'INR',
};
