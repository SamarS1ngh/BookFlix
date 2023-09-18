import 'package:bookflix/Utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../Model/Books.dart';
import '../../Service/apiservice.dart';

class BooksbyAuthor extends ChangeNotifier {
  final ApiService apiService = ApiService();
  List<Item>? booksByAuthor;

  Future<List<Item>> _callingBooksByAuthorName(String authorName) async {
    String url = '';
    url =
        "${baseUrl}q=inauthor:$authorName&printType=books&orderBy=relevance&key=${dotenv.env["key"]}";
    return await apiService.fetchBooks(url);
  }

  Future<void> fetchBooksbyAuthorName(String name) async {
    booksByAuthor = await _callingBooksByAuthorName(name);
    notifyListeners();
  }

  clearBooks() {
    booksByAuthor = null;
  }
}
