import 'package:flutter/material.dart';

import '../../Model/item.dart';

class SavedBooks extends ChangeNotifier {
  List<Item> savedBooks = [];

  void addBooks(Item books) {
    savedBooks.add(books);
    notifyListeners();
  }
}
