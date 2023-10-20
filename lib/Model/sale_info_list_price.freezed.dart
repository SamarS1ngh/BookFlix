// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_info_list_price.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SaleInfoListPrice _$SaleInfoListPriceFromJson(Map<String, dynamic> json) {
  return _SaleInfoListPrice.fromJson(json);
}

/// @nodoc
mixin _$SaleInfoListPrice {
  double get amount => throw _privateConstructorUsedError;
  String get currencyCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaleInfoListPriceCopyWith<SaleInfoListPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleInfoListPriceCopyWith<$Res> {
  factory $SaleInfoListPriceCopyWith(
          SaleInfoListPrice value, $Res Function(SaleInfoListPrice) then) =
      _$SaleInfoListPriceCopyWithImpl<$Res, SaleInfoListPrice>;
  @useResult
  $Res call({double amount, String currencyCode});
}

/// @nodoc
class _$SaleInfoListPriceCopyWithImpl<$Res, $Val extends SaleInfoListPrice>
    implements $SaleInfoListPriceCopyWith<$Res> {
  _$SaleInfoListPriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? currencyCode = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SaleInfoListPriceImplCopyWith<$Res>
    implements $SaleInfoListPriceCopyWith<$Res> {
  factory _$$SaleInfoListPriceImplCopyWith(_$SaleInfoListPriceImpl value,
          $Res Function(_$SaleInfoListPriceImpl) then) =
      __$$SaleInfoListPriceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double amount, String currencyCode});
}

/// @nodoc
class __$$SaleInfoListPriceImplCopyWithImpl<$Res>
    extends _$SaleInfoListPriceCopyWithImpl<$Res, _$SaleInfoListPriceImpl>
    implements _$$SaleInfoListPriceImplCopyWith<$Res> {
  __$$SaleInfoListPriceImplCopyWithImpl(_$SaleInfoListPriceImpl _value,
      $Res Function(_$SaleInfoListPriceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? currencyCode = null,
  }) {
    return _then(_$SaleInfoListPriceImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaleInfoListPriceImpl implements _SaleInfoListPrice {
  const _$SaleInfoListPriceImpl(
      {required this.amount, required this.currencyCode});

  factory _$SaleInfoListPriceImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaleInfoListPriceImplFromJson(json);

  @override
  final double amount;
  @override
  final String currencyCode;

  @override
  String toString() {
    return 'SaleInfoListPrice(amount: $amount, currencyCode: $currencyCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaleInfoListPriceImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, amount, currencyCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaleInfoListPriceImplCopyWith<_$SaleInfoListPriceImpl> get copyWith =>
      __$$SaleInfoListPriceImplCopyWithImpl<_$SaleInfoListPriceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaleInfoListPriceImplToJson(
      this,
    );
  }
}

abstract class _SaleInfoListPrice implements SaleInfoListPrice {
  const factory _SaleInfoListPrice(
      {required final double amount,
      required final String currencyCode}) = _$SaleInfoListPriceImpl;

  factory _SaleInfoListPrice.fromJson(Map<String, dynamic> json) =
      _$SaleInfoListPriceImpl.fromJson;

  @override
  double get amount;
  @override
  String get currencyCode;
  @override
  @JsonKey(ignore: true)
  _$$SaleInfoListPriceImplCopyWith<_$SaleInfoListPriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
