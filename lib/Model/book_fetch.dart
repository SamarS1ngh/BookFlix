import 'package:freezed_annotation/freezed_annotation.dart';

import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'item.dart';

part 'book_fetch.freezed.dart';
part 'book_fetch.g.dart';

BookFetch bookFetchFromJson(String str) => BookFetch.fromJson(json.decode(str));

String bookFetchToJson(BookFetch data) => json.encode(data.toJson());

@freezed
@freezed
class BookFetch with _$BookFetch {
  const factory BookFetch({
    required String kind,
    required int totalItems,
    required List<Item> items,
  }) = _BookFetch;

  factory BookFetch.fromJson(Map<String, dynamic> json) =>
      _$BookFetchFromJson(json);
}
