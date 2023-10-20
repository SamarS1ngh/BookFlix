import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_info.freezed.dart';
part 'search_info.g.dart';

@freezed
class SearchInfo with _$SearchInfo {
  const factory SearchInfo({
    required String textSnippet,
  }) = _SearchInfo;

  factory SearchInfo.fromJson(Map<String, dynamic> json) =>
      _$SearchInfoFromJson(json);
}
