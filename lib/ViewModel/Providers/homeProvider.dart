// ignore_for_file: file_names

import 'package:bookflix/Utils/constants.dart';
import 'package:bookflix/Service/apiservice.dart';
import 'package:flutter/material.dart';
import '../../Model/Books.dart';

class HomeNotifer extends ChangeNotifier {
  List<Item>? mangaBook;
  ApiService api = ApiService();
  Future<List<Item>> _fetchBook(
    String type,
    String printType,
    String order,
  ) async {
    String url = "";
    url = "${baseUrl}q=$type&printType=$printType&orderBy=$order&key=$key";
    return await api.fetchBooks(url);
  }

  fetchManga() async {
    mangaBook = await _fetchBook('manga', 'book', 'relevance');
    notifyListeners();
  }

  fetchfiction() {
    _fetchBook('fiction', 'book', 'relevance');
  }

  fetchNonfiction() {
    _fetchBook('nonfiction', 'book', 'relevance');
  }
}
