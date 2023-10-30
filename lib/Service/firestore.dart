import 'package:bookflix/Model/industry_identifier.dart';
import 'package:bookflix/Model/item.dart';
import 'package:bookflix/Model/reading_modes.dart';
import 'package:bookflix/Model/volume_info.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:developer';

abstract class IFirestoreService {
  Future<void> save({required Item saveBook});
  Future<void> unsave({required Item unsaveBook});
  transform({required Item book});
}

class DatabaseService implements IFirestoreService {
  final _db = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;
  Future<void> save({required Item saveBook}) async {
    final userDoc =
        await _db.collection("SavedBooks").doc(auth.currentUser!.uid).get();
    final List savedBookList = (userDoc.data()?['Book'] ?? []);

    Map<String, dynamic> word = {
      "saved": true,
      "id": saveBook.id,
      "image": saveBook.volumeInfo.imageLinks?.thumbnail ??
          'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.reddit.com%2Fr%2FAnimePhoneWallpapers%2Fcomments%2F3bxa25%2F1080x1920_minimalist_code_geass_wallpaper%2F&psig=AOvVaw3g6mybEzaL8Fn6vDONGHzN&ust=1698690920468000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCJiCx_nym4IDFQAAAAAdAAAAABAE',
      "title": saveBook.volumeInfo.title,
      "author": saveBook.volumeInfo.authors[0],
      "categories": saveBook.volumeInfo.categories,
      "description": saveBook.volumeInfo.description,
      "previewLink": saveBook.volumeInfo.previewLink,
      "volumeInfo": transform(book: saveBook),
    };
    savedBookList.add(word);
    await _db
        .collection('SavedBooks')
        .doc(auth.currentUser!.uid)
        .set({"Book": savedBookList}).then((value) => log('book saved'));
  }

  Future<void> unsave({required Item unsaveBook}) async {
    final userDoc =
        await _db.collection("SavedBooks").doc(auth.currentUser!.uid).get();
    final List savedBookList = (userDoc.data()?['Book']);
    Map<String, dynamic> word = {
      "saved": true,
      "id": unsaveBook.id,
      "image": unsaveBook.volumeInfo.imageLinks?.thumbnail ??
          'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.reddit.com%2Fr%2FAnimePhoneWallpapers%2Fcomments%2F3bxa25%2F1080x1920_minimalist_code_geass_wallpaper%2F&psig=AOvVaw3g6mybEzaL8Fn6vDONGHzN&ust=1698690920468000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCJiCx_nym4IDFQAAAAAdAAAAABAE',
      "title": unsaveBook.volumeInfo.title,
      "author": unsaveBook.volumeInfo.authors[0],
      "categories": unsaveBook.volumeInfo.categories,
      "description": unsaveBook.volumeInfo.description,
      "previewLink": unsaveBook.volumeInfo.previewLink,
      "volumeInfo": transform(book: unsaveBook),
    };

    savedBookList.removeWhere((book) => book["id"] == unsaveBook.id);
    await _db
        .collection('SavedBooks')
        .doc(auth.currentUser!.uid)
        .set({"Book": savedBookList}).then((value) => log('book saved'));
  }

  @override
  transform({required Item book}) {
    List<IndustryIdentifier> data = book.volumeInfo.industryIdentifiers!;
    List<Map<String, dynamic>> iiList = [];
    for (var i in data) {
      Map<String, dynamic> m = i.toJson();
      iiList.add(m);
    }
    final vi = book.volumeInfo.toJson();
    vi['industryIdentifiers'] = iiList;
    vi['readingModes'] = book.volumeInfo.readingModes.toJson();
    vi['imageLinks'] = book.volumeInfo.imageLinks!.toJson();
    return vi;
  }
}
