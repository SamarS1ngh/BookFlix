// ignore: file_names
import 'package:flutter/material.dart';

class AppConstants extends ChangeNotifier {
  static String baseUrl = 'https://www.googleapis.com/books/v1/volumes?';
  static String popularUrl =
      'https://www.googleapis.com/books/v1/volumes?q=orderBy=relevance&key=AIzaSyBQu1xMNUiMF26lycDx4qTs0JgA5eLEydk';
  static bool logged = true;
}
