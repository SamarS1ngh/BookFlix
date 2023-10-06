// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_fetch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookFetchImpl _$$BookFetchImplFromJson(Map<String, dynamic> json) =>
    _$BookFetchImpl(
      kind: json['kind'] as String,
      totalItems: json['totalItems'] as int,
      items: (json['items'] as List<dynamic>)
          .map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BookFetchImplToJson(_$BookFetchImpl instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'totalItems': instance.totalItems,
      'items': instance.items,
    };
