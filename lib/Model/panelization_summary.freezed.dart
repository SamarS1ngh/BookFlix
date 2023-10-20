// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'panelization_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PanelizationSummary _$PanelizationSummaryFromJson(Map<String, dynamic> json) {
  return _PanelizationSummary.fromJson(json);
}

/// @nodoc
mixin _$PanelizationSummary {
  bool get containsEpubBubbles => throw _privateConstructorUsedError;
  bool get containsImageBubbles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PanelizationSummaryCopyWith<PanelizationSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PanelizationSummaryCopyWith<$Res> {
  factory $PanelizationSummaryCopyWith(
          PanelizationSummary value, $Res Function(PanelizationSummary) then) =
      _$PanelizationSummaryCopyWithImpl<$Res, PanelizationSummary>;
  @useResult
  $Res call({bool containsEpubBubbles, bool containsImageBubbles});
}

/// @nodoc
class _$PanelizationSummaryCopyWithImpl<$Res, $Val extends PanelizationSummary>
    implements $PanelizationSummaryCopyWith<$Res> {
  _$PanelizationSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? containsEpubBubbles = null,
    Object? containsImageBubbles = null,
  }) {
    return _then(_value.copyWith(
      containsEpubBubbles: null == containsEpubBubbles
          ? _value.containsEpubBubbles
          : containsEpubBubbles // ignore: cast_nullable_to_non_nullable
              as bool,
      containsImageBubbles: null == containsImageBubbles
          ? _value.containsImageBubbles
          : containsImageBubbles // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PanelizationSummaryImplCopyWith<$Res>
    implements $PanelizationSummaryCopyWith<$Res> {
  factory _$$PanelizationSummaryImplCopyWith(_$PanelizationSummaryImpl value,
          $Res Function(_$PanelizationSummaryImpl) then) =
      __$$PanelizationSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool containsEpubBubbles, bool containsImageBubbles});
}

/// @nodoc
class __$$PanelizationSummaryImplCopyWithImpl<$Res>
    extends _$PanelizationSummaryCopyWithImpl<$Res, _$PanelizationSummaryImpl>
    implements _$$PanelizationSummaryImplCopyWith<$Res> {
  __$$PanelizationSummaryImplCopyWithImpl(_$PanelizationSummaryImpl _value,
      $Res Function(_$PanelizationSummaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? containsEpubBubbles = null,
    Object? containsImageBubbles = null,
  }) {
    return _then(_$PanelizationSummaryImpl(
      containsEpubBubbles: null == containsEpubBubbles
          ? _value.containsEpubBubbles
          : containsEpubBubbles // ignore: cast_nullable_to_non_nullable
              as bool,
      containsImageBubbles: null == containsImageBubbles
          ? _value.containsImageBubbles
          : containsImageBubbles // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PanelizationSummaryImpl implements _PanelizationSummary {
  const _$PanelizationSummaryImpl(
      {required this.containsEpubBubbles, required this.containsImageBubbles});

  factory _$PanelizationSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$PanelizationSummaryImplFromJson(json);

  @override
  final bool containsEpubBubbles;
  @override
  final bool containsImageBubbles;

  @override
  String toString() {
    return 'PanelizationSummary(containsEpubBubbles: $containsEpubBubbles, containsImageBubbles: $containsImageBubbles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PanelizationSummaryImpl &&
            (identical(other.containsEpubBubbles, containsEpubBubbles) ||
                other.containsEpubBubbles == containsEpubBubbles) &&
            (identical(other.containsImageBubbles, containsImageBubbles) ||
                other.containsImageBubbles == containsImageBubbles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, containsEpubBubbles, containsImageBubbles);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PanelizationSummaryImplCopyWith<_$PanelizationSummaryImpl> get copyWith =>
      __$$PanelizationSummaryImplCopyWithImpl<_$PanelizationSummaryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PanelizationSummaryImplToJson(
      this,
    );
  }
}

abstract class _PanelizationSummary implements PanelizationSummary {
  const factory _PanelizationSummary(
      {required final bool containsEpubBubbles,
      required final bool containsImageBubbles}) = _$PanelizationSummaryImpl;

  factory _PanelizationSummary.fromJson(Map<String, dynamic> json) =
      _$PanelizationSummaryImpl.fromJson;

  @override
  bool get containsEpubBubbles;
  @override
  bool get containsImageBubbles;
  @override
  @JsonKey(ignore: true)
  _$$PanelizationSummaryImplCopyWith<_$PanelizationSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
