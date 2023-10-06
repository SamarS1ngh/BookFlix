import 'package:json_annotation/json_annotation.dart';

import 'enum_values.dart';

enum Type {
  @JsonValue("ISBN_10")
  ISBN_10,
  @JsonValue("ISBN_13")
  ISBN_13,
  @JsonValue("OTHER")
  OTHER
}

final typeValues = EnumValues(
    {"ISBN_10": Type.ISBN_10, "ISBN_13": Type.ISBN_13, "OTHER": Type.OTHER});

class TypeConverter implements JsonConverter<Type, String> {
  const TypeConverter();

  @override
  Type fromJson(String json) {
    switch (json) {
      case 'ISBN_10':
        return Type.ISBN_10;
      case 'ISBN_13':
        return Type.ISBN_13;
      case 'OTHER':
        return Type.OTHER;
      default:
        throw ArgumentError('Unknown Type enum value: $json');
    }
  }

  @override
  String toJson(Type object) {
    return object.toString().split('.').last;
  }
}
