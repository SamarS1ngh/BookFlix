// ignore_for_file: file_names

import 'dart:developer';

import 'package:bookflix/Model/book_fetch.dart';
import 'package:bookflix/Service/apiservice.dart';
import 'package:bookflix/Utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../Model/item.dart';

class HomeBookFetch extends ChangeNotifier {
  bool isLoggedIn = false;

  final ApiService apiService = ApiService();

  List<Item>? popularBooks;
  List<Item>? mangaBooks;
  List<Item>? scifiBooks;
  List<Item>? ficBooks;
  List<Item>? nonficBooks;

  String url1 = '';
  //String url2 = '';
  static final key = dotenv.env['key'];

  Future<List<Item>> _fetchHomeBooks(String subject) async {
    url1 =
        "${AppConstants.baseUrl}q=subject:$subject&printType=books&orderBy=relevance&key=$key";
    log('this is the url $url1');
    return await apiService.fetchBooks(url1);
  }

  Future fetchCategories() async {
    log("api called");
    popularBooks = await apiService.fetchBooks(AppConstants.baseUrl);
    // print('api key $key');

    scifiBooks = await _fetchHomeBooks('science+fiction');

    ficBooks = await _fetchHomeBooks('fiction');

    nonficBooks = await _fetchHomeBooks('nonfiction');
    mangaBooks = await _fetchHomeBooks('manga');
    log("notifying");
    notifyListeners();
    log("notified");
  }
}
