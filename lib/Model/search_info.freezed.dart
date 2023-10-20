// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchInfo _$SearchInfoFromJson(Map<String, dynamic> json) {
  return _SearchInfo.fromJson(json);
}

/// @nodoc
mixin _$SearchInfo {
  String get textSnippet => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchInfoCopyWith<SearchInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchInfoCopyWith<$Res> {
  factory $SearchInfoCopyWith(
          SearchInfo value, $Res Function(SearchInfo) then) =
      _$SearchInfoCopyWithImpl<$Res, SearchInfo>;
  @useResult
  $Res call({String textSnippet});
}

/// @nodoc
class _$SearchInfoCopyWithImpl<$Res, $Val extends SearchInfo>
    implements $SearchInfoCopyWith<$Res> {
  _$SearchInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textSnippet = null,
  }) {
    return _then(_value.copyWith(
      textSnippet: null == textSnippet
          ? _value.textSnippet
          : textSnippet // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchInfoImplCopyWith<$Res>
    implements $SearchInfoCopyWith<$Res> {
  factory _$$SearchInfoImplCopyWith(
          _$SearchInfoImpl value, $Res Function(_$SearchInfoImpl) then) =
      __$$SearchInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String textSnippet});
}

/// @nodoc
class __$$SearchInfoImplCopyWithImpl<$Res>
    extends _$SearchInfoCopyWithImpl<$Res, _$SearchInfoImpl>
    implements _$$SearchInfoImplCopyWith<$Res> {
  __$$SearchInfoImplCopyWithImpl(
      _$SearchInfoImpl _value, $Res Function(_$SearchInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textSnippet = null,
  }) {
    return _then(_$SearchInfoImpl(
      textSnippet: null == textSnippet
          ? _value.textSnippet
          : textSnippet // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchInfoImpl implements _SearchInfo {
  const _$SearchInfoImpl({required this.textSnippet});

  factory _$SearchInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchInfoImplFromJson(json);

  @override
  final String textSnippet;

  @override
  String toString() {
    return 'SearchInfo(textSnippet: $textSnippet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchInfoImpl &&
            (identical(other.textSnippet, textSnippet) ||
                other.textSnippet == textSnippet));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, textSnippet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchInfoImplCopyWith<_$SearchInfoImpl> get copyWith =>
      __$$SearchInfoImplCopyWithImpl<_$SearchInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchInfoImplToJson(
      this,
    );
  }
}

abstract class _SearchInfo implements SearchInfo {
  const factory _SearchInfo({required final String textSnippet}) =
      _$SearchInfoImpl;

  factory _SearchInfo.fromJson(Map<String, dynamic> json) =
      _$SearchInfoImpl.fromJson;

  @override
  String get textSnippet;
  @override
  @JsonKey(ignore: true)
  _$$SearchInfoImplCopyWith<_$SearchInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
