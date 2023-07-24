// To parse this JSON data, do
//
//     final bookfetch = bookfetchFromJson(jsonString);

import 'dart:convert';

Bookfetch bookfetchFromJson(String str) => Bookfetch.fromJson(json.decode(str));

String bookfetchToJson(Bookfetch data) => json.encode(data.toJson());

class Bookfetch {
  String kind;
  int totalItems;
  List<Item> items;

  Bookfetch({
    required this.kind,
    required this.totalItems,
    required this.items,
  });

  factory Bookfetch.fromJson(Map<String, dynamic> json) => Bookfetch(
        kind: json["kind"],
        totalItems: json["totalItems"],
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "kind": kind,
        "totalItems": totalItems,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
      };
}

class Item {
  String kind;
  String id;
  String etag;
  String selfLink;
  VolumeInfo volumeInfo;
  SearchInfo searchInfo;

  Item({
    required this.kind,
    required this.id,
    required this.etag,
    required this.selfLink,
    required this.volumeInfo,
    required this.searchInfo,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        kind: json["kind"],
        id: json["id"],
        etag: json["etag"],
        selfLink: json["selfLink"],
        volumeInfo: VolumeInfo.fromJson(json["volumeInfo"]),
        searchInfo: SearchInfo.fromJson(json["searchInfo"]),
      );

  Map<String, dynamic> toJson() => {
        "kind": kind,
        "id": id,
        "etag": etag,
        "selfLink": selfLink,
        "volumeInfo": volumeInfo.toJson(),
        "searchInfo": searchInfo.toJson(),
      };
}

class SearchInfo {
  String textSnippet;

  SearchInfo({
    required this.textSnippet,
  });

  factory SearchInfo.fromJson(Map<String, dynamic> json) => SearchInfo(
        textSnippet: json["textSnippet"],
      );

  Map<String, dynamic> toJson() => {
        "textSnippet": textSnippet,
      };
}

class VolumeInfo {
  String title;
  List<String> authors;
  String publisher;
  DateTime publishedDate;
  String description;
  int pageCount;
  List<String> categories;
  ImageLinks imageLinks;
  String language;
  String previewLink;
  String infoLink;
  String canonicalVolumeLink;

  VolumeInfo({
    required this.title,
    required this.authors,
    required this.publisher,
    required this.publishedDate,
    required this.description,
    required this.pageCount,
    required this.categories,
    required this.imageLinks,
    required this.language,
    required this.previewLink,
    required this.infoLink,
    required this.canonicalVolumeLink,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) => VolumeInfo(
        title: json["title"],
        authors: List<String>.from(json["authors"].map((x) => x)),
        publisher: json["publisher"],
        publishedDate: DateTime.parse(json["publishedDate"]),
        description: json["description"],
        pageCount: json["pageCount"],
        categories: List<String>.from(json["categories"].map((x) => x)),
        imageLinks: ImageLinks.fromJson(json["imageLinks"]),
        language: json["language"],
        previewLink: json["previewLink"],
        infoLink: json["infoLink"],
        canonicalVolumeLink: json["canonicalVolumeLink"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "authors": List<dynamic>.from(authors.map((x) => x)),
        "publisher": publisher,
        "publishedDate":
            "${publishedDate.year.toString().padLeft(4, '0')}-${publishedDate.month.toString().padLeft(2, '0')}-${publishedDate.day.toString().padLeft(2, '0')}",
        "description": description,
        "pageCount": pageCount,
        "categories": List<dynamic>.from(categories.map((x) => x)),
        "imageLinks": imageLinks.toJson(),
        "language": language,
        "previewLink": previewLink,
        "infoLink": infoLink,
        "canonicalVolumeLink": canonicalVolumeLink,
      };
}

class ImageLinks {
  String smallThumbnail;
  String thumbnail;

  ImageLinks({
    required this.smallThumbnail,
    required this.thumbnail,
  });

  factory ImageLinks.fromJson(Map<String, dynamic> json) => ImageLinks(
        smallThumbnail: json["smallThumbnail"],
        thumbnail: json["thumbnail"],
      );

  Map<String, dynamic> toJson() => {
        "smallThumbnail": smallThumbnail,
        "thumbnail": thumbnail,
      };
}
