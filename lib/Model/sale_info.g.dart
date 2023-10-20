// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaleInfoImpl _$$SaleInfoImplFromJson(Map<String, dynamic> json) =>
    _$SaleInfoImpl(
      country: json['country'] as String,
      saleability: json['saleability'] as String,
      isEbook: json['isEbook'] as bool,
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
      'country': instance.country,
      'saleability': instance.saleability,
      'isEbook': instance.isEbook,
      'listPrice': instance.listPrice,
      'retailPrice': instance.retailPrice,
      'buyLink': instance.buyLink,
      'offers': instance.offers,
    };
