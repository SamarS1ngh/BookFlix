// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OfferImpl _$$OfferImplFromJson(Map<String, dynamic> json) => _$OfferImpl(
      finskyOfferType: json['finskyOfferType'] as int,
      listPrice:
          OfferListPrice.fromJson(json['listPrice'] as Map<String, dynamic>),
      retailPrice:
          OfferListPrice.fromJson(json['retailPrice'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OfferImplToJson(_$OfferImpl instance) =>
    <String, dynamic>{
      'finskyOfferType': instance.finskyOfferType,
      'listPrice': instance.listPrice,
      'retailPrice': instance.retailPrice,
    };
