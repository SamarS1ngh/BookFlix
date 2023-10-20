import 'package:bookflix/Service/apiservice.dart';
import 'package:bookflix/Utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../Model/book_fetch.dart';
import '../../Model/item.dart';

class TagProvider extends ChangeNotifier {
  final ApiService apiService = ApiService();
  List<Item>? tagBooks;

  String url = '';
  Future<List<Item>> _fetchTagBooks(String tag) async {
    url =
        "${baseUrl}q=subject:$tag&printType=books&orderBy=relevance&key=${dotenv.env['key']}";

    return apiService.fetchBooks(url);
  }

  Future<void> fetchtags(String tag) async {
    tagBooks = await _fetchTagBooks(tag);
    notifyListeners();
  }

  clear() {
    tagBooks = [];
  }
}
