// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  @JsonKey(name: "kind")
  Kind get kind => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "etag")
  String get etag => throw _privateConstructorUsedError;
  @JsonKey(name: "selfLink")
  String get selfLink => throw _privateConstructorUsedError;
  @JsonKey(name: "volumeInfo")
  VolumeInfo get volumeInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "saleInfo")
  SaleInfo get saleInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "accessInfo")
  AccessInfo get accessInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call(
      {@JsonKey(name: "kind") Kind kind,
      @JsonKey(name: "id") String id,
      @JsonKey(name: "etag") String etag,
      @JsonKey(name: "selfLink") String selfLink,
      @JsonKey(name: "volumeInfo") VolumeInfo volumeInfo,
      @JsonKey(name: "saleInfo") SaleInfo saleInfo,
      @JsonKey(name: "accessInfo") AccessInfo accessInfo});

  $VolumeInfoCopyWith<$Res> get volumeInfo;
  $SaleInfoCopyWith<$Res> get saleInfo;
  $AccessInfoCopyWith<$Res> get accessInfo;
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? id = null,
    Object? etag = null,
    Object? selfLink = null,
    Object? volumeInfo = null,
    Object? saleInfo = null,
    Object? accessInfo = null,
  }) {
    return _then(_value.copyWith(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as Kind,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      etag: null == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String,
      selfLink: null == selfLink
          ? _value.selfLink
          : selfLink // ignore: cast_nullable_to_non_nullable
              as String,
      volumeInfo: null == volumeInfo
          ? _value.volumeInfo
          : volumeInfo // ignore: cast_nullable_to_non_nullable
              as VolumeInfo,
      saleInfo: null == saleInfo
          ? _value.saleInfo
          : saleInfo // ignore: cast_nullable_to_non_nullable
              as SaleInfo,
      accessInfo: null == accessInfo
          ? _value.accessInfo
          : accessInfo // ignore: cast_nullable_to_non_nullable
              as AccessInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VolumeInfoCopyWith<$Res> get volumeInfo {
    return $VolumeInfoCopyWith<$Res>(_value.volumeInfo, (value) {
      return _then(_value.copyWith(volumeInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SaleInfoCopyWith<$Res> get saleInfo {
    return $SaleInfoCopyWith<$Res>(_value.saleInfo, (value) {
      return _then(_value.copyWith(saleInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AccessInfoCopyWith<$Res> get accessInfo {
    return $AccessInfoCopyWith<$Res>(_value.accessInfo, (value) {
      return _then(_value.copyWith(accessInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemImplCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$ItemImplCopyWith(
          _$ItemImpl value, $Res Function(_$ItemImpl) then) =
      __$$ItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "kind") Kind kind,
      @JsonKey(name: "id") String id,
      @JsonKey(name: "etag") String etag,
      @JsonKey(name: "selfLink") String selfLink,
      @JsonKey(name: "volumeInfo") VolumeInfo volumeInfo,
      @JsonKey(name: "saleInfo") SaleInfo saleInfo,
      @JsonKey(name: "accessInfo") AccessInfo accessInfo});

  @override
  $VolumeInfoCopyWith<$Res> get volumeInfo;
  @override
  $SaleInfoCopyWith<$Res> get saleInfo;
  @override
  $AccessInfoCopyWith<$Res> get accessInfo;
}

/// @nodoc
class __$$ItemImplCopyWithImpl<$Res>
    extends _$ItemCopyWithImpl<$Res, _$ItemImpl>
    implements _$$ItemImplCopyWith<$Res> {
  __$$ItemImplCopyWithImpl(_$ItemImpl _value, $Res Function(_$ItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? id = null,
    Object? etag = null,
    Object? selfLink = null,
    Object? volumeInfo = null,
    Object? saleInfo = null,
    Object? accessInfo = null,
  }) {
    return _then(_$ItemImpl(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as Kind,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      etag: null == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String,
      selfLink: null == selfLink
          ? _value.selfLink
          : selfLink // ignore: cast_nullable_to_non_nullable
              as String,
      volumeInfo: null == volumeInfo
          ? _value.volumeInfo
          : volumeInfo // ignore: cast_nullable_to_non_nullable
              as VolumeInfo,
      saleInfo: null == saleInfo
          ? _value.saleInfo
          : saleInfo // ignore: cast_nullable_to_non_nullable
              as SaleInfo,
      accessInfo: null == accessInfo
          ? _value.accessInfo
          : accessInfo // ignore: cast_nullable_to_non_nullable
              as AccessInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemImpl implements _Item {
  const _$ItemImpl(
      {@JsonKey(name: "kind") required this.kind,
      @JsonKey(name: "id") required this.id,
      @JsonKey(name: "etag") required this.etag,
      @JsonKey(name: "selfLink") required this.selfLink,
      @JsonKey(name: "volumeInfo") required this.volumeInfo,
      @JsonKey(name: "saleInfo") required this.saleInfo,
      @JsonKey(name: "accessInfo") required this.accessInfo});

  factory _$ItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemImplFromJson(json);

  @override
  @JsonKey(name: "kind")
  final Kind kind;
  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "etag")
  final String etag;
  @override
  @JsonKey(name: "selfLink")
  final String selfLink;
  @override
  @JsonKey(name: "volumeInfo")
  final VolumeInfo volumeInfo;
  @override
  @JsonKey(name: "saleInfo")
  final SaleInfo saleInfo;
  @override
  @JsonKey(name: "accessInfo")
  final AccessInfo accessInfo;

  @override
  String toString() {
    return 'Item(kind: $kind, id: $id, etag: $etag, selfLink: $selfLink, volumeInfo: $volumeInfo, saleInfo: $saleInfo, accessInfo: $accessInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemImpl &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.etag, etag) || other.etag == etag) &&
            (identical(other.selfLink, selfLink) ||
                other.selfLink == selfLink) &&
            (identical(other.volumeInfo, volumeInfo) ||
                other.volumeInfo == volumeInfo) &&
            (identical(other.saleInfo, saleInfo) ||
                other.saleInfo == saleInfo) &&
            (identical(other.accessInfo, accessInfo) ||
                other.accessInfo == accessInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, kind, id, etag, selfLink, volumeInfo, saleInfo, accessInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      __$$ItemImplCopyWithImpl<_$ItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemImplToJson(
      this,
    );
  }
}

abstract class _Item implements Item {
  const factory _Item(
          {@JsonKey(name: "kind") required final Kind kind,
          @JsonKey(name: "id") required final String id,
          @JsonKey(name: "etag") required final String etag,
          @JsonKey(name: "selfLink") required final String selfLink,
          @JsonKey(name: "volumeInfo") required final VolumeInfo volumeInfo,
          @JsonKey(name: "saleInfo") required final SaleInfo saleInfo,
          @JsonKey(name: "accessInfo") required final AccessInfo accessInfo}) =
      _$ItemImpl;

  factory _Item.fromJson(Map<String, dynamic> json) = _$ItemImpl.fromJson;

  @override
  @JsonKey(name: "kind")
  Kind get kind;
  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "etag")
  String get etag;
  @override
  @JsonKey(name: "selfLink")
  String get selfLink;
  @override
  @JsonKey(name: "volumeInfo")
  VolumeInfo get volumeInfo;
  @override
  @JsonKey(name: "saleInfo")
  SaleInfo get saleInfo;
  @override
  @JsonKey(name: "accessInfo")
  AccessInfo get accessInfo;
  @override
  @JsonKey(ignore: true)
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
