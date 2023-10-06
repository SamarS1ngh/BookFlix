import 'package:freezed_annotation/freezed_annotation.dart';

import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'item.dart';

part 'book_fetch.freezed.dart';
part 'book_fetch.g.dart';

@freezed
class BookFetch with _$BookFetch {
  const factory BookFetch({
    @JsonKey(name: "kind") required String kind,
    @JsonKey(name: "totalItems") required int totalItems,
    @JsonKey(name: "items") required List<Item> items,
  }) = _BookFetch;

  factory BookFetch.fromJson(Map<String, dynamic> json) =>
      _$BookFetchFromJson(json);
  //Map<String, dynamic> toJson() => _$BookFetchToJson(this);
}
