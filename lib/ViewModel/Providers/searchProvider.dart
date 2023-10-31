import 'package:bookflix/Model/item.dart';
import 'package:bookflix/Service/apiservice.dart';
import 'package:bookflix/Utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class SearchProvider extends ChangeNotifier {
  ApiService apiService = ApiService();
  static final key = dotenv.env['key'];
  List<Item> searchedBooks = [];
 Future search(String keyword)async{
String url = '${AppConstants.baseUrl}q=${keyword.trim().replaceAll(' ', '+')}&orderBy=relevance&printType=books&maxResults=40&key=$key';
print(url);
searchedBooks= await apiService.fetchBooks(url);
print(searchedBooks[30].volumeInfo.title);
notifyListeners();

  }
}
