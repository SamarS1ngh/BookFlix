import 'package:bookflix/Service/apiservice.dart';
import 'package:bookflix/Utils/constants.dart';
import 'package:flutter/material.dart';

import '../../Model/Books.dart';

class TagProvider extends ChangeNotifier {
  final ApiService apiService = ApiService();
  List<Item>? tagBooks;

  String url = '';
  Future<List<Item>> _fetchTagBooks(String tag) async {
    url = "${baseUrl}q=subject:$tag&printType=books&orderBy=relevance&key=$key";

    return await apiService.fetchBooks(url);
  }

  Future<void> fetchtags(String tag) async {
    tagBooks = await _fetchTagBooks(tag);
    notifyListeners();
  }

  clear() {
    tagBooks = [];
  }
}
