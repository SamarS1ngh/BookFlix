// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccessInfoImpl _$$AccessInfoImplFromJson(Map<String, dynamic> json) =>
    _$AccessInfoImpl(
      country: $enumDecodeNullable(_$CountryEnumMap, json['country']),
      viewability:
          $enumDecodeNullable(_$ViewabilityEnumMap, json['viewability']),
      embeddable: json['embeddable'] as bool?,
      publicDomain: json['publicDomain'] as bool?,
      textToSpeechPermission: $enumDecodeNullable(
          _$TextToSpeechPermissionEnumMap, json['textToSpeechPermission']),
      epub: json['epub'] == null
          ? null
          : Epub.fromJson(json['epub'] as Map<String, dynamic>),
      pdf: json['pdf'] == null
          ? null
          : Pdf.fromJson(json['pdf'] as Map<String, dynamic>),
      webReaderLink: json['webReaderLink'] as String?,
      accessViewStatus: $enumDecodeNullable(
          _$AccessViewStatusEnumMap, json['accessViewStatus']),
      quoteSharingAllowed: json['quoteSharingAllowed'] as bool?,
    );

Map<String, dynamic> _$$AccessInfoImplToJson(_$AccessInfoImpl instance) =>
    <String, dynamic>{
      'country': _$CountryEnumMap[instance.country],
      'viewability': _$ViewabilityEnumMap[instance.viewability],
      'embeddable': instance.embeddable,
      'publicDomain': instance.publicDomain,
      'textToSpeechPermission':
          _$TextToSpeechPermissionEnumMap[instance.textToSpeechPermission],
      'epub': instance.epub,
      'pdf': instance.pdf,
      'webReaderLink': instance.webReaderLink,
      'accessViewStatus': _$AccessViewStatusEnumMap[instance.accessViewStatus],
      'quoteSharingAllowed': instance.quoteSharingAllowed,
    };

const _$CountryEnumMap = {
  Country.IN: 'IN',
};

const _$ViewabilityEnumMap = {
  Viewability.NO_PAGES: 'NO_PAGES',
  Viewability.PARTIAL: 'PARTIAL',
  Viewability.ALL_PAGES: 'ALL_PAGES',
};

const _$TextToSpeechPermissionEnumMap = {
  TextToSpeechPermission.ALLOWED: 'ALLOWED',
  TextToSpeechPermission.ALLOWED_FOR_ACCESSIBILITY: 'ALLOWED_FOR_ACCESSIBILITY',
};

const _$AccessViewStatusEnumMap = {
  AccessViewStatus.NONE: 'NONE',
  AccessViewStatus.SAMPLE: 'SAMPLE',
};
