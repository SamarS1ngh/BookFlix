// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'access_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccessInfo _$AccessInfoFromJson(Map<String, dynamic> json) {
  return _AccessInfo.fromJson(json);
}

/// @nodoc
mixin _$AccessInfo {
  @JsonKey(name: "country")
  Country? get country => throw _privateConstructorUsedError;
  @JsonKey(name: "viewability")
  Viewability? get viewability => throw _privateConstructorUsedError;
  @JsonKey(name: "embeddable")
  bool? get embeddable => throw _privateConstructorUsedError;
  @JsonKey(name: "publicDomain")
  bool? get publicDomain => throw _privateConstructorUsedError;
  @JsonKey(name: "textToSpeechPermission")
  TextToSpeechPermission? get textToSpeechPermission =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "epub")
  Epub? get epub => throw _privateConstructorUsedError;
  @JsonKey(name: "pdf")
  Pdf? get pdf => throw _privateConstructorUsedError;
  @JsonKey(name: "webReaderLink")
  String? get webReaderLink => throw _privateConstructorUsedError;
  @JsonKey(name: "accessViewStatus")
  AccessViewStatus? get accessViewStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "quoteSharingAllowed")
  bool? get quoteSharingAllowed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccessInfoCopyWith<AccessInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessInfoCopyWith<$Res> {
  factory $AccessInfoCopyWith(
          AccessInfo value, $Res Function(AccessInfo) then) =
      _$AccessInfoCopyWithImpl<$Res, AccessInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: "country") Country? country,
      @JsonKey(name: "viewability") Viewability? viewability,
      @JsonKey(name: "embeddable") bool? embeddable,
      @JsonKey(name: "publicDomain") bool? publicDomain,
      @JsonKey(name: "textToSpeechPermission")
      TextToSpeechPermission? textToSpeechPermission,
      @JsonKey(name: "epub") Epub? epub,
      @JsonKey(name: "pdf") Pdf? pdf,
      @JsonKey(name: "webReaderLink") String? webReaderLink,
      @JsonKey(name: "accessViewStatus") AccessViewStatus? accessViewStatus,
      @JsonKey(name: "quoteSharingAllowed") bool? quoteSharingAllowed});

  $EpubCopyWith<$Res>? get epub;
  $PdfCopyWith<$Res>? get pdf;
}

/// @nodoc
class _$AccessInfoCopyWithImpl<$Res, $Val extends AccessInfo>
    implements $AccessInfoCopyWith<$Res> {
  _$AccessInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
    Object? viewability = freezed,
    Object? embeddable = freezed,
    Object? publicDomain = freezed,
    Object? textToSpeechPermission = freezed,
    Object? epub = freezed,
    Object? pdf = freezed,
    Object? webReaderLink = freezed,
    Object? accessViewStatus = freezed,
    Object? quoteSharingAllowed = freezed,
  }) {
    return _then(_value.copyWith(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
      viewability: freezed == viewability
          ? _value.viewability
          : viewability // ignore: cast_nullable_to_non_nullable
              as Viewability?,
      embeddable: freezed == embeddable
          ? _value.embeddable
          : embeddable // ignore: cast_nullable_to_non_nullable
              as bool?,
      publicDomain: freezed == publicDomain
          ? _value.publicDomain
          : publicDomain // ignore: cast_nullable_to_non_nullable
              as bool?,
      textToSpeechPermission: freezed == textToSpeechPermission
          ? _value.textToSpeechPermission
          : textToSpeechPermission // ignore: cast_nullable_to_non_nullable
              as TextToSpeechPermission?,
      epub: freezed == epub
          ? _value.epub
          : epub // ignore: cast_nullable_to_non_nullable
              as Epub?,
      pdf: freezed == pdf
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as Pdf?,
      webReaderLink: freezed == webReaderLink
          ? _value.webReaderLink
          : webReaderLink // ignore: cast_nullable_to_non_nullable
              as String?,
      accessViewStatus: freezed == accessViewStatus
          ? _value.accessViewStatus
          : accessViewStatus // ignore: cast_nullable_to_non_nullable
              as AccessViewStatus?,
      quoteSharingAllowed: freezed == quoteSharingAllowed
          ? _value.quoteSharingAllowed
          : quoteSharingAllowed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EpubCopyWith<$Res>? get epub {
    if (_value.epub == null) {
      return null;
    }

    return $EpubCopyWith<$Res>(_value.epub!, (value) {
      return _then(_value.copyWith(epub: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PdfCopyWith<$Res>? get pdf {
    if (_value.pdf == null) {
      return null;
    }

    return $PdfCopyWith<$Res>(_value.pdf!, (value) {
      return _then(_value.copyWith(pdf: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccessInfoImplCopyWith<$Res>
    implements $AccessInfoCopyWith<$Res> {
  factory _$$AccessInfoImplCopyWith(
          _$AccessInfoImpl value, $Res Function(_$AccessInfoImpl) then) =
      __$$AccessInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "country") Country? country,
      @JsonKey(name: "viewability") Viewability? viewability,
      @JsonKey(name: "embeddable") bool? embeddable,
      @JsonKey(name: "publicDomain") bool? publicDomain,
      @JsonKey(name: "textToSpeechPermission")
      TextToSpeechPermission? textToSpeechPermission,
      @JsonKey(name: "epub") Epub? epub,
      @JsonKey(name: "pdf") Pdf? pdf,
      @JsonKey(name: "webReaderLink") String? webReaderLink,
      @JsonKey(name: "accessViewStatus") AccessViewStatus? accessViewStatus,
      @JsonKey(name: "quoteSharingAllowed") bool? quoteSharingAllowed});

  @override
  $EpubCopyWith<$Res>? get epub;
  @override
  $PdfCopyWith<$Res>? get pdf;
}

/// @nodoc
class __$$AccessInfoImplCopyWithImpl<$Res>
    extends _$AccessInfoCopyWithImpl<$Res, _$AccessInfoImpl>
    implements _$$AccessInfoImplCopyWith<$Res> {
  __$$AccessInfoImplCopyWithImpl(
      _$AccessInfoImpl _value, $Res Function(_$AccessInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
    Object? viewability = freezed,
    Object? embeddable = freezed,
    Object? publicDomain = freezed,
    Object? textToSpeechPermission = freezed,
    Object? epub = freezed,
    Object? pdf = freezed,
    Object? webReaderLink = freezed,
    Object? accessViewStatus = freezed,
    Object? quoteSharingAllowed = freezed,
  }) {
    return _then(_$AccessInfoImpl(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
      viewability: freezed == viewability
          ? _value.viewability
          : viewability // ignore: cast_nullable_to_non_nullable
              as Viewability?,
      embeddable: freezed == embeddable
          ? _value.embeddable
          : embeddable // ignore: cast_nullable_to_non_nullable
              as bool?,
      publicDomain: freezed == publicDomain
          ? _value.publicDomain
          : publicDomain // ignore: cast_nullable_to_non_nullable
              as bool?,
      textToSpeechPermission: freezed == textToSpeechPermission
          ? _value.textToSpeechPermission
          : textToSpeechPermission // ignore: cast_nullable_to_non_nullable
              as TextToSpeechPermission?,
      epub: freezed == epub
          ? _value.epub
          : epub // ignore: cast_nullable_to_non_nullable
              as Epub?,
      pdf: freezed == pdf
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as Pdf?,
      webReaderLink: freezed == webReaderLink
          ? _value.webReaderLink
          : webReaderLink // ignore: cast_nullable_to_non_nullable
              as String?,
      accessViewStatus: freezed == accessViewStatus
          ? _value.accessViewStatus
          : accessViewStatus // ignore: cast_nullable_to_non_nullable
              as AccessViewStatus?,
      quoteSharingAllowed: freezed == quoteSharingAllowed
          ? _value.quoteSharingAllowed
          : quoteSharingAllowed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccessInfoImpl implements _AccessInfo {
  const _$AccessInfoImpl(
      {@JsonKey(name: "country") this.country,
      @JsonKey(name: "viewability") this.viewability,
      @JsonKey(name: "embeddable") this.embeddable,
      @JsonKey(name: "publicDomain") this.publicDomain,
      @JsonKey(name: "textToSpeechPermission") this.textToSpeechPermission,
      @JsonKey(name: "epub") this.epub,
      @JsonKey(name: "pdf") this.pdf,
      @JsonKey(name: "webReaderLink") this.webReaderLink,
      @JsonKey(name: "accessViewStatus") this.accessViewStatus,
      @JsonKey(name: "quoteSharingAllowed") this.quoteSharingAllowed});

  factory _$AccessInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccessInfoImplFromJson(json);

  @override
  @JsonKey(name: "country")
  final Country? country;
  @override
  @JsonKey(name: "viewability")
  final Viewability? viewability;
  @override
  @JsonKey(name: "embeddable")
  final bool? embeddable;
  @override
  @JsonKey(name: "publicDomain")
  final bool? publicDomain;
  @override
  @JsonKey(name: "textToSpeechPermission")
  final TextToSpeechPermission? textToSpeechPermission;
  @override
  @JsonKey(name: "epub")
  final Epub? epub;
  @override
  @JsonKey(name: "pdf")
  final Pdf? pdf;
  @override
  @JsonKey(name: "webReaderLink")
  final String? webReaderLink;
  @override
  @JsonKey(name: "accessViewStatus")
  final AccessViewStatus? accessViewStatus;
  @override
  @JsonKey(name: "quoteSharingAllowed")
  final bool? quoteSharingAllowed;

  @override
  String toString() {
    return 'AccessInfo(country: $country, viewability: $viewability, embeddable: $embeddable, publicDomain: $publicDomain, textToSpeechPermission: $textToSpeechPermission, epub: $epub, pdf: $pdf, webReaderLink: $webReaderLink, accessViewStatus: $accessViewStatus, quoteSharingAllowed: $quoteSharingAllowed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccessInfoImpl &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.viewability, viewability) ||
                other.viewability == viewability) &&
            (identical(other.embeddable, embeddable) ||
                other.embeddable == embeddable) &&
            (identical(other.publicDomain, publicDomain) ||
                other.publicDomain == publicDomain) &&
            (identical(other.textToSpeechPermission, textToSpeechPermission) ||
                other.textToSpeechPermission == textToSpeechPermission) &&
            (identical(other.epub, epub) || other.epub == epub) &&
            (identical(other.pdf, pdf) || other.pdf == pdf) &&
            (identical(other.webReaderLink, webReaderLink) ||
                other.webReaderLink == webReaderLink) &&
            (identical(other.accessViewStatus, accessViewStatus) ||
                other.accessViewStatus == accessViewStatus) &&
            (identical(other.quoteSharingAllowed, quoteSharingAllowed) ||
                other.quoteSharingAllowed == quoteSharingAllowed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      country,
      viewability,
      embeddable,
      publicDomain,
      textToSpeechPermission,
      epub,
      pdf,
      webReaderLink,
      accessViewStatus,
      quoteSharingAllowed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccessInfoImplCopyWith<_$AccessInfoImpl> get copyWith =>
      __$$AccessInfoImplCopyWithImpl<_$AccessInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccessInfoImplToJson(
      this,
    );
  }
}

abstract class _AccessInfo implements AccessInfo {
  const factory _AccessInfo(
      {@JsonKey(name: "country") final Country? country,
      @JsonKey(name: "viewability") final Viewability? viewability,
      @JsonKey(name: "embeddable") final bool? embeddable,
      @JsonKey(name: "publicDomain") final bool? publicDomain,
      @JsonKey(name: "textToSpeechPermission")
      final TextToSpeechPermission? textToSpeechPermission,
      @JsonKey(name: "epub") final Epub? epub,
      @JsonKey(name: "pdf") final Pdf? pdf,
      @JsonKey(name: "webReaderLink") final String? webReaderLink,
      @JsonKey(name: "accessViewStatus")
      final AccessViewStatus? accessViewStatus,
      @JsonKey(name: "quoteSharingAllowed")
      final bool? quoteSharingAllowed}) = _$AccessInfoImpl;

  factory _AccessInfo.fromJson(Map<String, dynamic> json) =
      _$AccessInfoImpl.fromJson;

  @override
  @JsonKey(name: "country")
  Country? get country;
  @override
  @JsonKey(name: "viewability")
  Viewability? get viewability;
  @override
  @JsonKey(name: "embeddable")
  bool? get embeddable;
  @override
  @JsonKey(name: "publicDomain")
  bool? get publicDomain;
  @override
  @JsonKey(name: "textToSpeechPermission")
  TextToSpeechPermission? get textToSpeechPermission;
  @override
  @JsonKey(name: "epub")
  Epub? get epub;
  @override
  @JsonKey(name: "pdf")
  Pdf? get pdf;
  @override
  @JsonKey(name: "webReaderLink")
  String? get webReaderLink;
  @override
  @JsonKey(name: "accessViewStatus")
  AccessViewStatus? get accessViewStatus;
  @override
  @JsonKey(name: "quoteSharingAllowed")
  bool? get quoteSharingAllowed;
  @override
  @JsonKey(ignore: true)
  _$$AccessInfoImplCopyWith<_$AccessInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
