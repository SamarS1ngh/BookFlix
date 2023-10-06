// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaleInfoImpl _$$SaleInfoImplFromJson(Map<String, dynamic> json) =>
    _$SaleInfoImpl(
      country: $enumDecodeNullable(_$CountryEnumMap, json['country']),
      saleability:
          $enumDecodeNullable(_$SaleabilityEnumMap, json['saleability']),
      isEbook: json['isEbook'] as bool?,
      listPrice: json['listPrice'] == null
          ? null
          : SaleInfoListPrice.fromJson(
              json['listPrice'] as Map<String, dynamic>),
      retailPrice: json['retailPrice'] == null
          ? null
          : SaleInfoListPrice.fromJson(
              json['retailPrice'] as Map<String, dynamic>),
      buyLink: json['buyLink'] as String?,
      offers: (json['offers'] as List<dynamic>?)
          ?.map((e) => Offer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SaleInfoImplToJson(_$SaleInfoImpl instance) =>
    <String, dynamic>{
      'country': _$CountryEnumMap[instance.country],
      'saleability': _$SaleabilityEnumMap[instance.saleability],
      'isEbook': instance.isEbook,
      'listPrice': instance.listPrice,
      'retailPrice': instance.retailPrice,
      'buyLink': instance.buyLink,
      'offers': instance.offers,
    };

const _$CountryEnumMap = {
  Country.IN: 'IN',
};

const _$SaleabilityEnumMap = {
  Saleability.FOR_SALE: 'FOR_SALE',
  Saleability.NOT_FOR_SALE: 'NOT_FOR_SALE',
};
