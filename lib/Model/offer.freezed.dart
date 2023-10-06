// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Offer _$OfferFromJson(Map<String, dynamic> json) {
  return _Offer.fromJson(json);
}

/// @nodoc
mixin _$Offer {
  @JsonKey(name: "finskyOfferType")
  int? get finskyOfferType => throw _privateConstructorUsedError;
  @JsonKey(name: "listPrice")
  OfferListPrice? get listPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "retailPrice")
  OfferListPrice? get retailPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfferCopyWith<Offer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferCopyWith<$Res> {
  factory $OfferCopyWith(Offer value, $Res Function(Offer) then) =
      _$OfferCopyWithImpl<$Res, Offer>;
  @useResult
  $Res call(
      {@JsonKey(name: "finskyOfferType") int? finskyOfferType,
      @JsonKey(name: "listPrice") OfferListPrice? listPrice,
      @JsonKey(name: "retailPrice") OfferListPrice? retailPrice});

  $OfferListPriceCopyWith<$Res>? get listPrice;
  $OfferListPriceCopyWith<$Res>? get retailPrice;
}

/// @nodoc
class _$OfferCopyWithImpl<$Res, $Val extends Offer>
    implements $OfferCopyWith<$Res> {
  _$OfferCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? finskyOfferType = freezed,
    Object? listPrice = freezed,
    Object? retailPrice = freezed,
  }) {
    return _then(_value.copyWith(
      finskyOfferType: freezed == finskyOfferType
          ? _value.finskyOfferType
          : finskyOfferType // ignore: cast_nullable_to_non_nullable
              as int?,
      listPrice: freezed == listPrice
          ? _value.listPrice
          : listPrice // ignore: cast_nullable_to_non_nullable
              as OfferListPrice?,
      retailPrice: freezed == retailPrice
          ? _value.retailPrice
          : retailPrice // ignore: cast_nullable_to_non_nullable
              as OfferListPrice?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OfferListPriceCopyWith<$Res>? get listPrice {
    if (_value.listPrice == null) {
      return null;
    }

    return $OfferListPriceCopyWith<$Res>(_value.listPrice!, (value) {
      return _then(_value.copyWith(listPrice: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OfferListPriceCopyWith<$Res>? get retailPrice {
    if (_value.retailPrice == null) {
      return null;
    }

    return $OfferListPriceCopyWith<$Res>(_value.retailPrice!, (value) {
      return _then(_value.copyWith(retailPrice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OfferImplCopyWith<$Res> implements $OfferCopyWith<$Res> {
  factory _$$OfferImplCopyWith(
          _$OfferImpl value, $Res Function(_$OfferImpl) then) =
      __$$OfferImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "finskyOfferType") int? finskyOfferType,
      @JsonKey(name: "listPrice") OfferListPrice? listPrice,
      @JsonKey(name: "retailPrice") OfferListPrice? retailPrice});

  @override
  $OfferListPriceCopyWith<$Res>? get listPrice;
  @override
  $OfferListPriceCopyWith<$Res>? get retailPrice;
}

/// @nodoc
class __$$OfferImplCopyWithImpl<$Res>
    extends _$OfferCopyWithImpl<$Res, _$OfferImpl>
    implements _$$OfferImplCopyWith<$Res> {
  __$$OfferImplCopyWithImpl(
      _$OfferImpl _value, $Res Function(_$OfferImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? finskyOfferType = freezed,
    Object? listPrice = freezed,
    Object? retailPrice = freezed,
  }) {
    return _then(_$OfferImpl(
      finskyOfferType: freezed == finskyOfferType
          ? _value.finskyOfferType
          : finskyOfferType // ignore: cast_nullable_to_non_nullable
              as int?,
      listPrice: freezed == listPrice
          ? _value.listPrice
          : listPrice // ignore: cast_nullable_to_non_nullable
              as OfferListPrice?,
      retailPrice: freezed == retailPrice
          ? _value.retailPrice
          : retailPrice // ignore: cast_nullable_to_non_nullable
              as OfferListPrice?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OfferImpl implements _Offer {
  const _$OfferImpl(
      {@JsonKey(name: "finskyOfferType") this.finskyOfferType,
      @JsonKey(name: "listPrice") this.listPrice,
      @JsonKey(name: "retailPrice") this.retailPrice});

  factory _$OfferImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfferImplFromJson(json);

  @override
  @JsonKey(name: "finskyOfferType")
  final int? finskyOfferType;
  @override
  @JsonKey(name: "listPrice")
  final OfferListPrice? listPrice;
  @override
  @JsonKey(name: "retailPrice")
  final OfferListPrice? retailPrice;

  @override
  String toString() {
    return 'Offer(finskyOfferType: $finskyOfferType, listPrice: $listPrice, retailPrice: $retailPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfferImpl &&
            (identical(other.finskyOfferType, finskyOfferType) ||
                other.finskyOfferType == finskyOfferType) &&
            (identical(other.listPrice, listPrice) ||
                other.listPrice == listPrice) &&
            (identical(other.retailPrice, retailPrice) ||
                other.retailPrice == retailPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, finskyOfferType, listPrice, retailPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OfferImplCopyWith<_$OfferImpl> get copyWith =>
      __$$OfferImplCopyWithImpl<_$OfferImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OfferImplToJson(
      this,
    );
  }
}

abstract class _Offer implements Offer {
  const factory _Offer(
          {@JsonKey(name: "finskyOfferType") final int? finskyOfferType,
          @JsonKey(name: "listPrice") final OfferListPrice? listPrice,
          @JsonKey(name: "retailPrice") final OfferListPrice? retailPrice}) =
      _$OfferImpl;

  factory _Offer.fromJson(Map<String, dynamic> json) = _$OfferImpl.fromJson;

  @override
  @JsonKey(name: "finskyOfferType")
  int? get finskyOfferType;
  @override
  @JsonKey(name: "listPrice")
  OfferListPrice? get listPrice;
  @override
  @JsonKey(name: "retailPrice")
  OfferListPrice? get retailPrice;
  @override
  @JsonKey(ignore: true)
  _$$OfferImplCopyWith<_$OfferImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
