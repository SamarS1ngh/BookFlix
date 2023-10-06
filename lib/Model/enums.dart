import 'package:freezed_annotation/freezed_annotation.dart';

import 'enum_values.dart';

enum AccessViewStatus {
  @JsonValue("NONE")
  NONE,
  @JsonValue("SAMPLE")
  SAMPLE
}

final accessViewStatusValues = EnumValues(
    {"NONE": AccessViewStatus.NONE, "SAMPLE": AccessViewStatus.SAMPLE});

enum Country {
  @JsonValue("IN")
  IN
}

final countryValues = EnumValues({"IN": Country.IN});

enum TextToSpeechPermission {
  @JsonValue("ALLOWED")
  ALLOWED,
  @JsonValue("ALLOWED_FOR_ACCESSIBILITY")
  ALLOWED_FOR_ACCESSIBILITY
}

final textToSpeechPermissionValues = EnumValues({
  "ALLOWED": TextToSpeechPermission.ALLOWED,
  "ALLOWED_FOR_ACCESSIBILITY": TextToSpeechPermission.ALLOWED_FOR_ACCESSIBILITY
});

enum Viewability {
  @JsonValue("NO_PAGES")
  NO_PAGES,
  @JsonValue("PARTIAL")
  PARTIAL,
  @JsonValue("ALL_PAGES")
  ALL_PAGES,
}

final viewabilityValues = EnumValues({
  "NO_PAGES": Viewability.NO_PAGES,
  "ALL_PAGES": Viewability.ALL_PAGES,
  "PARTIAL": Viewability.PARTIAL
});

enum Kind {
  @JsonValue("books#volume")
  BOOKS_VOLUME
}

final kindValues = EnumValues({"books#volume": Kind.BOOKS_VOLUME});

enum Saleability {
  @JsonValue("FOR_SALE")
  FOR_SALE,
  @JsonValue("NOT_FOR_SALE")
  NOT_FOR_SALE
}

final saleabilityValues = EnumValues({
  "FOR_SALE": Saleability.FOR_SALE,
  "NOT_FOR_SALE": Saleability.NOT_FOR_SALE
});

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

enum Language {
  @JsonValue("ca")
  CA,
  @JsonValue("en")
  EN
}

final languageValues = EnumValues({"ca": Language.CA, "en": Language.EN});

enum MaturityRating {
  @JsonValue("NOT_MATURE")
  NOT_MATURE,
  @JsonValue("MATURE")
  MATURE
}

final maturityRatingValues = EnumValues(
    {"NOT_MATURE": MaturityRating.NOT_MATURE, "MATURE": MaturityRating.MATURE});

enum PrintType {
  @JsonValue("BOOK")
  BOOK
}

final printTypeValues = EnumValues({"BOOK": PrintType.BOOK});

enum CurrencyCode {
  @JsonValue("INR")
  INR
}

final currencyCodeValues = EnumValues({"INR": CurrencyCode.INR});
