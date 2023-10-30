import 'package:bookflix/Model/industry_identifier.dart';
import 'package:bookflix/Model/item.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:developer';

abstract class IFirestoreService {
  Future<void> save({required Item saveBook});
  Future<void> unsave({required Item unsaveBook});
}

class DatabaseService implements IFirestoreService {
  final _db = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;
  Future<void> save({required Item saveBook}) async {
    final userDoc =
        await _db.collection("SavedBooks").doc(auth.currentUser!.uid).get();
    final savedBookList = (userDoc.data()?['Book']);
    Map<String, dynamic> word = {
      "saved": true,
      "id": saveBook.id,
      "image": saveBook.volumeInfo.imageLinks?.thumbnail ??
          'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.reddit.com%2Fr%2FAnimePhoneWallpapers%2Fcomments%2F3bxa25%2F1080x1920_minimalist_code_geass_wallpaper%2F&psig=AOvVaw3g6mybEzaL8Fn6vDONGHzN&ust=1698690920468000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCJiCx_nym4IDFQAAAAAdAAAAABAE',
      "title": saveBook.volumeInfo.title,
      "author": saveBook.volumeInfo.authors[0],
      "categories": saveBook.volumeInfo.categories,
      "description": saveBook.volumeInfo.description,
      "previewLink": saveBook.volumeInfo.previewLink
    };
    savedBookList.add(word);
    await _db
        .collection('SavedBooks')
        .doc(auth.currentUser!.uid)
        .set({"Book": savedBookList}).then((value) => log('book saved'));
  }

  Future<void> unsave({required Item unsaveBook}) async {
    print('');
  }
}
