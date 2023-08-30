import 'package:http/http.dart' as http;
import 'dart:convert';
import '../Model/Books.dart';
import 'dart:developer';

class ApiService {
  Future<List<Item>> fetchBooks(String url) async {
    // try {
    log('Making api call');
    final response = await http.get(Uri.parse(url));
    // ignore: unnecessary_null_comparison
    if (response.body != null) {
      if (response.statusCode == 200) {
        log('Api call successful');

        final Map<String, dynamic> jsonData = json.decode(response.body);

        final Bookfetch bookfetch = Bookfetch.fromJson(jsonData);

        log(bookfetch.items[0].volumeInfo.imageLinks!.thumbnail);
        return bookfetch.items;
      } else {
        log('call failed with status code ${response.statusCode}');
        return [];
      }
    } else {
      log('response body is null');
      return [];
    }
  }
}
