import 'package:http/http.dart' as http;
import 'dart:convert';
import '../Model/book_fetch.dart';
import 'dart:developer';

import '../Model/item.dart';

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
        // for (var i in jsonData['items']) {
        //   print(i['volumeInfo']['industryIdentifiers']);
        // }
        //  log(jsonData['items'].toString());
        final BookFetch bookfetch = BookFetch.fromJson(jsonData);
        // log('bookfetch ${bookfetch.toString()}');
        // log(bookfetch.items[0].volumeInfo.imageLinks!.thumbnail!);
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
