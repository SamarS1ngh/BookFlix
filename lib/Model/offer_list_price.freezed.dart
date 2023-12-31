// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offer_list_price.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OfferListPrice _$OfferListPriceFromJson(Map<String, dynamic> json) {
  return _OfferListPrice.fromJson(json);
}

/// @nodoc
mixin _$OfferListPrice {
  int get amountInMicros => throw _privateConstructorUsedError;
  String get currencyCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfferListPriceCopyWith<OfferListPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferListPriceCopyWith<$Res> {
  factory $OfferListPriceCopyWith(
          OfferListPrice value, $Res Function(OfferListPrice) then) =
      _$OfferListPriceCopyWithImpl<$Res, OfferListPrice>;
  @useResult
  $Res call({int amountInMicros, String currencyCode});
}

/// @nodoc
class _$OfferListPriceCopyWithImpl<$Res, $Val extends OfferListPrice>
    implements $OfferListPriceCopyWith<$Res> {
  _$OfferListPriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountInMicros = null,
    Object? currencyCode = null,
  }) {
    return _then(_value.copyWith(
      amountInMicros: null == amountInMicros
          ? _value.amountInMicros
          : amountInMicros // ignore: cast_nullable_to_non_nullable
              as int,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OfferListPriceImplCopyWith<$Res>
    implements $OfferListPriceCopyWith<$Res> {
  factory _$$OfferListPriceImplCopyWith(_$OfferListPriceImpl value,
          $Res Function(_$OfferListPriceImpl) then) =
      __$$OfferListPriceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int amountInMicros, String currencyCode});
}

/// @nodoc
class __$$OfferListPriceImplCopyWithImpl<$Res>
    extends _$OfferListPriceCopyWithImpl<$Res, _$OfferListPriceImpl>
    implements _$$OfferListPriceImplCopyWith<$Res> {
  __$$OfferListPriceImplCopyWithImpl(
      _$OfferListPriceImpl _value, $Res Function(_$OfferListPriceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountInMicros = null,
    Object? currencyCode = null,
  }) {
    return _then(_$OfferListPriceImpl(
      amountInMicros: null == amountInMicros
          ? _value.amountInMicros
          : amountInMicros // ignore: cast_nullable_to_non_nullable
              as int,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OfferListPriceImpl implements _OfferListPrice {
  const _$OfferListPriceImpl(
      {required this.amountInMicros, required this.currencyCode});

  factory _$OfferListPriceImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfferListPriceImplFromJson(json);

  @override
  final int amountInMicros;
  @override
  final String currencyCode;

  @override
  String toString() {
    return 'OfferListPrice(amountInMicros: $amountInMicros, currencyCode: $currencyCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfferListPriceImpl &&
            (identical(other.amountInMicros, amountInMicros) ||
                other.amountInMicros == amountInMicros) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, amountInMicros, currencyCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OfferListPriceImplCopyWith<_$OfferListPriceImpl> get copyWith =>
      __$$OfferListPriceImplCopyWithImpl<_$OfferListPriceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OfferListPriceImplToJson(
      this,
    );
  }
}

abstract class _OfferListPrice implements OfferListPrice {
  const factory _OfferListPrice(
      {required final int amountInMicros,
      required final String currencyCode}) = _$OfferListPriceImpl;

  factory _OfferListPrice.fromJson(Map<String, dynamic> json) =
      _$OfferListPriceImpl.fromJson;

  @override
  int get amountInMicros;
  @override
  String get currencyCode;
  @override
  @JsonKey(ignore: true)
  _$$OfferListPriceImplCopyWith<_$OfferListPriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
