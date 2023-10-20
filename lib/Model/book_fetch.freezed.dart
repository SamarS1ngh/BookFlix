// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_fetch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookFetch _$BookFetchFromJson(Map<String, dynamic> json) {
  return _BookFetch.fromJson(json);
}

/// @nodoc
mixin _$BookFetch {
  String get kind => throw _privateConstructorUsedError;
  int get totalItems => throw _privateConstructorUsedError;
  List<Item> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookFetchCopyWith<BookFetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookFetchCopyWith<$Res> {
  factory $BookFetchCopyWith(BookFetch value, $Res Function(BookFetch) then) =
      _$BookFetchCopyWithImpl<$Res, BookFetch>;
  @useResult
  $Res call({String kind, int totalItems, List<Item> items});
}

/// @nodoc
class _$BookFetchCopyWithImpl<$Res, $Val extends BookFetch>
    implements $BookFetchCopyWith<$Res> {
  _$BookFetchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? totalItems = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookFetchImplCopyWith<$Res>
    implements $BookFetchCopyWith<$Res> {
  factory _$$BookFetchImplCopyWith(
          _$BookFetchImpl value, $Res Function(_$BookFetchImpl) then) =
      __$$BookFetchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String kind, int totalItems, List<Item> items});
}

/// @nodoc
class __$$BookFetchImplCopyWithImpl<$Res>
    extends _$BookFetchCopyWithImpl<$Res, _$BookFetchImpl>
    implements _$$BookFetchImplCopyWith<$Res> {
  __$$BookFetchImplCopyWithImpl(
      _$BookFetchImpl _value, $Res Function(_$BookFetchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? totalItems = null,
    Object? items = null,
  }) {
    return _then(_$BookFetchImpl(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookFetchImpl implements _BookFetch {
  const _$BookFetchImpl(
      {required this.kind,
      required this.totalItems,
      required final List<Item> items})
      : _items = items;

  factory _$BookFetchImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookFetchImplFromJson(json);

  @override
  final String kind;
  @override
  final int totalItems;
  final List<Item> _items;
  @override
  List<Item> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'BookFetch(kind: $kind, totalItems: $totalItems, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookFetchImpl &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, kind, totalItems,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookFetchImplCopyWith<_$BookFetchImpl> get copyWith =>
      __$$BookFetchImplCopyWithImpl<_$BookFetchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookFetchImplToJson(
      this,
    );
  }
}

abstract class _BookFetch implements BookFetch {
  const factory _BookFetch(
      {required final String kind,
      required final int totalItems,
      required final List<Item> items}) = _$BookFetchImpl;

  factory _BookFetch.fromJson(Map<String, dynamic> json) =
      _$BookFetchImpl.fromJson;

  @override
  String get kind;
  @override
  int get totalItems;
  @override
  List<Item> get items;
  @override
  @JsonKey(ignore: true)
  _$$BookFetchImplCopyWith<_$BookFetchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
