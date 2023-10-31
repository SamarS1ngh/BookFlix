import 'package:bookflix/Utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../Model/book_fetch.dart';
import '../../Model/item.dart';
import '../../Service/apiservice.dart';

class BooksbyAuthor extends ChangeNotifier {
  final ApiService apiService = ApiService();
  List<Item>? booksByAuthor;

  Future<List<Item>> _callingBooksByAuthorName(String authorName) async {
    String url = '';
    url =
        "${AppConstants.baseUrl}q=inauthor:$authorName&printType=books&orderBy=relevance&maxResults=40&key=${dotenv.env['key']}";
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
