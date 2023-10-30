import 'package:flutter/material.dart';

import '../../Model/item.dart';

class SavedBooks extends ChangeNotifier {
  List<Item> savedBooks = [];
  bool isSaved = true;
  void addBooks(Item books) {
    savedBooks.add(books);
    notifyListeners();
  }
}
