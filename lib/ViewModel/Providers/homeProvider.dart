// ignore_for_file: file_names

import 'dart:developer';

import 'package:bookflix/Model/Books.dart';
import 'package:bookflix/Service/apiservice.dart';
import 'package:bookflix/Utils/constants.dart';
import 'package:flutter/material.dart';

class HomeBookFetch extends ChangeNotifier {
  final ApiService apiService = ApiService();

  List<Item>? popularBooks;
  List<Item>? mangaBooks;
  List<Item>? scifiBooks;
  List<Item>? ficBooks;
  List<Item>? nonficBooks;

  String url1 = '';
  String url2 = '';
  Future<List<Item>> _fetchHomeBooks(String subject) async {
    url1 =
        "${baseUrl}q=subject:$subject&printType=books&orderBy=relevance&key=$key";
    return await apiService.fetchBooks(url1);
  }

  Future<void> fetchCategories() async {
    log("api called");
    popularBooks = await apiService.fetchBooks(popularUrl);

    scifiBooks = await _fetchHomeBooks('science+fiction');
    ficBooks = await _fetchHomeBooks('fiction');
    nonficBooks = await _fetchHomeBooks('nonfiction');
    mangaBooks = await _fetchHomeBooks('manga');
    log("notifying");
    notifyListeners();
    log("notified");
  }
}
