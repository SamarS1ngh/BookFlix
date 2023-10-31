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
      "item": transform(book: saveBook),
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
    Map<String, dynamic> word = {"item": transform(book: unsaveBook)};
    log('unsaveBook.id ${unsaveBook.id}');
    log('firebase book id ${savedBookList[0]['item']['id']}');
    savedBookList.removeWhere((book) => book["item"]["id"] == unsaveBook.id);
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
    final item = book.toJson();
    item['volumeInfo'] = book.volumeInfo.toJson();
    item['volumeInfo']['industryIdentifiers'] = iiList;
    item['volumeInfo']['readingModes'] = book.volumeInfo.readingModes.toJson();
    item['volumeInfo']['imageLinks'] = book.volumeInfo.imageLinks?.toJson();
    item['saleInfo'] = book.saleInfo.toJson();
    item['accessInfo'] = book.accessInfo.toJson();
    item['accessInfo']['epub'] = book.accessInfo.epub.toJson();
    item['accessInfo']['pdf'] = book.accessInfo.pdf.toJson();
    item['searchInfo'] = book.searchInfo?.toJson();
    return item;
  }
}
