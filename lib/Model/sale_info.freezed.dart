// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SaleInfo _$SaleInfoFromJson(Map<String, dynamic> json) {
  return _SaleInfo.fromJson(json);
}

/// @nodoc
mixin _$SaleInfo {
  @JsonKey(name: "country")
  Country? get country => throw _privateConstructorUsedError;
  @JsonKey(name: "saleability")
  Saleability? get saleability => throw _privateConstructorUsedError;
  @JsonKey(name: "isEbook")
  bool? get isEbook => throw _privateConstructorUsedError;
  @JsonKey(name: "listPrice")
  SaleInfoListPrice? get listPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "retailPrice")
  SaleInfoListPrice? get retailPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "buyLink")
  String? get buyLink => throw _privateConstructorUsedError;
  @JsonKey(name: "offers")
  List<Offer>? get offers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaleInfoCopyWith<SaleInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleInfoCopyWith<$Res> {
  factory $SaleInfoCopyWith(SaleInfo value, $Res Function(SaleInfo) then) =
      _$SaleInfoCopyWithImpl<$Res, SaleInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: "country") Country? country,
      @JsonKey(name: "saleability") Saleability? saleability,
      @JsonKey(name: "isEbook") bool? isEbook,
      @JsonKey(name: "listPrice") SaleInfoListPrice? listPrice,
      @JsonKey(name: "retailPrice") SaleInfoListPrice? retailPrice,
      @JsonKey(name: "buyLink") String? buyLink,
      @JsonKey(name: "offers") List<Offer>? offers});

  $SaleInfoListPriceCopyWith<$Res>? get listPrice;
  $SaleInfoListPriceCopyWith<$Res>? get retailPrice;
}

/// @nodoc
class _$SaleInfoCopyWithImpl<$Res, $Val extends SaleInfo>
    implements $SaleInfoCopyWith<$Res> {
  _$SaleInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
    Object? saleability = freezed,
    Object? isEbook = freezed,
    Object? listPrice = freezed,
    Object? retailPrice = freezed,
    Object? buyLink = freezed,
    Object? offers = freezed,
  }) {
    return _then(_value.copyWith(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
      saleability: freezed == saleability
          ? _value.saleability
          : saleability // ignore: cast_nullable_to_non_nullable
              as Saleability?,
      isEbook: freezed == isEbook
          ? _value.isEbook
          : isEbook // ignore: cast_nullable_to_non_nullable
              as bool?,
      listPrice: freezed == listPrice
          ? _value.listPrice
          : listPrice // ignore: cast_nullable_to_non_nullable
              as SaleInfoListPrice?,
      retailPrice: freezed == retailPrice
          ? _value.retailPrice
          : retailPrice // ignore: cast_nullable_to_non_nullable
              as SaleInfoListPrice?,
      buyLink: freezed == buyLink
          ? _value.buyLink
          : buyLink // ignore: cast_nullable_to_non_nullable
              as String?,
      offers: freezed == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<Offer>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SaleInfoListPriceCopyWith<$Res>? get listPrice {
    if (_value.listPrice == null) {
      return null;
    }

    return $SaleInfoListPriceCopyWith<$Res>(_value.listPrice!, (value) {
      return _then(_value.copyWith(listPrice: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SaleInfoListPriceCopyWith<$Res>? get retailPrice {
    if (_value.retailPrice == null) {
      return null;
    }

    return $SaleInfoListPriceCopyWith<$Res>(_value.retailPrice!, (value) {
      return _then(_value.copyWith(retailPrice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SaleInfoImplCopyWith<$Res>
    implements $SaleInfoCopyWith<$Res> {
  factory _$$SaleInfoImplCopyWith(
          _$SaleInfoImpl value, $Res Function(_$SaleInfoImpl) then) =
      __$$SaleInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "country") Country? country,
      @JsonKey(name: "saleability") Saleability? saleability,
      @JsonKey(name: "isEbook") bool? isEbook,
      @JsonKey(name: "listPrice") SaleInfoListPrice? listPrice,
      @JsonKey(name: "retailPrice") SaleInfoListPrice? retailPrice,
      @JsonKey(name: "buyLink") String? buyLink,
      @JsonKey(name: "offers") List<Offer>? offers});

  @override
  $SaleInfoListPriceCopyWith<$Res>? get listPrice;
  @override
  $SaleInfoListPriceCopyWith<$Res>? get retailPrice;
}

/// @nodoc
class __$$SaleInfoImplCopyWithImpl<$Res>
    extends _$SaleInfoCopyWithImpl<$Res, _$SaleInfoImpl>
    implements _$$SaleInfoImplCopyWith<$Res> {
  __$$SaleInfoImplCopyWithImpl(
      _$SaleInfoImpl _value, $Res Function(_$SaleInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
    Object? saleability = freezed,
    Object? isEbook = freezed,
    Object? listPrice = freezed,
    Object? retailPrice = freezed,
    Object? buyLink = freezed,
    Object? offers = freezed,
  }) {
    return _then(_$SaleInfoImpl(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
      saleability: freezed == saleability
          ? _value.saleability
          : saleability // ignore: cast_nullable_to_non_nullable
              as Saleability?,
      isEbook: freezed == isEbook
          ? _value.isEbook
          : isEbook // ignore: cast_nullable_to_non_nullable
              as bool?,
      listPrice: freezed == listPrice
          ? _value.listPrice
          : listPrice // ignore: cast_nullable_to_non_nullable
              as SaleInfoListPrice?,
      retailPrice: freezed == retailPrice
          ? _value.retailPrice
          : retailPrice // ignore: cast_nullable_to_non_nullable
              as SaleInfoListPrice?,
      buyLink: freezed == buyLink
          ? _value.buyLink
          : buyLink // ignore: cast_nullable_to_non_nullable
              as String?,
      offers: freezed == offers
          ? _value._offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<Offer>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaleInfoImpl implements _SaleInfo {
  const _$SaleInfoImpl(
      {@JsonKey(name: "country") this.country,
      @JsonKey(name: "saleability") this.saleability,
      @JsonKey(name: "isEbook") this.isEbook,
      @JsonKey(name: "listPrice") this.listPrice,
      @JsonKey(name: "retailPrice") this.retailPrice,
      @JsonKey(name: "buyLink") this.buyLink,
      @JsonKey(name: "offers") final List<Offer>? offers})
      : _offers = offers;

  factory _$SaleInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaleInfoImplFromJson(json);

  @override
  @JsonKey(name: "country")
  final Country? country;
  @override
  @JsonKey(name: "saleability")
  final Saleability? saleability;
  @override
  @JsonKey(name: "isEbook")
  final bool? isEbook;
  @override
  @JsonKey(name: "listPrice")
  final SaleInfoListPrice? listPrice;
  @override
  @JsonKey(name: "retailPrice")
  final SaleInfoListPrice? retailPrice;
  @override
  @JsonKey(name: "buyLink")
  final String? buyLink;
  final List<Offer>? _offers;
  @override
  @JsonKey(name: "offers")
  List<Offer>? get offers {
    final value = _offers;
    if (value == null) return null;
    if (_offers is EqualUnmodifiableListView) return _offers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SaleInfo(country: $country, saleability: $saleability, isEbook: $isEbook, listPrice: $listPrice, retailPrice: $retailPrice, buyLink: $buyLink, offers: $offers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaleInfoImpl &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.saleability, saleability) ||
                other.saleability == saleability) &&
            (identical(other.isEbook, isEbook) || other.isEbook == isEbook) &&
            (identical(other.listPrice, listPrice) ||
                other.listPrice == listPrice) &&
            (identical(other.retailPrice, retailPrice) ||
                other.retailPrice == retailPrice) &&
            (identical(other.buyLink, buyLink) || other.buyLink == buyLink) &&
            const DeepCollectionEquality().equals(other._offers, _offers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      country,
      saleability,
      isEbook,
      listPrice,
      retailPrice,
      buyLink,
      const DeepCollectionEquality().hash(_offers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaleInfoImplCopyWith<_$SaleInfoImpl> get copyWith =>
      __$$SaleInfoImplCopyWithImpl<_$SaleInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaleInfoImplToJson(
      this,
    );
  }
}

abstract class _SaleInfo implements SaleInfo {
  const factory _SaleInfo(
      {@JsonKey(name: "country") final Country? country,
      @JsonKey(name: "saleability") final Saleability? saleability,
      @JsonKey(name: "isEbook") final bool? isEbook,
      @JsonKey(name: "listPrice") final SaleInfoListPrice? listPrice,
      @JsonKey(name: "retailPrice") final SaleInfoListPrice? retailPrice,
      @JsonKey(name: "buyLink") final String? buyLink,
      @JsonKey(name: "offers") final List<Offer>? offers}) = _$SaleInfoImpl;

  factory _SaleInfo.fromJson(Map<String, dynamic> json) =
      _$SaleInfoImpl.fromJson;

  @override
  @JsonKey(name: "country")
  Country? get country;
  @override
  @JsonKey(name: "saleability")
  Saleability? get saleability;
  @override
  @JsonKey(name: "isEbook")
  bool? get isEbook;
  @override
  @JsonKey(name: "listPrice")
  SaleInfoListPrice? get listPrice;
  @override
  @JsonKey(name: "retailPrice")
  SaleInfoListPrice? get retailPrice;
  @override
  @JsonKey(name: "buyLink")
  String? get buyLink;
  @override
  @JsonKey(name: "offers")
  List<Offer>? get offers;
  @override
  @JsonKey(ignore: true)
  _$$SaleInfoImplCopyWith<_$SaleInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
