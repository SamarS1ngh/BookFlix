import 'package:http/http.dart' as http;
import 'dart:convert';
import '../Model/Books.dart';

class ApiService {
  Future<List<Item>> fetchBooks(String url) async {
    try {
      print('Making api call');
      final response = await http.get(Uri.parse(url));
      // ignore: unnecessary_null_comparison
      if (response.body != null) {
        if (response.statusCode == 200) {
          print('Api call successful');

          final Map<String, dynamic> jsonData = json.decode(response.body);
          // print(response.body);
          // print(Bookfetch.fromJson(jsonData).items);

          final Bookfetch bookfetch = Bookfetch.fromJson(jsonData);
          // if (jsonData.containsKey('items')) {
          //   try {
          //     setState(() {
          //       popularBooks = Bookfetch.fromJson(jsonData).items;
          //     });
          //   } catch (e) {
          //     print('error is :${e}');
          //   }
          // }

          //  print(popularBooks);
          return bookfetch.items;
        } else {
          print('call failed with status code ${response.statusCode}');
          return [];
        }
      } else {
        print('response body is null');
        return [];
      }
    } catch (e) {
      print('error is :${e}');
      return [];
    }
  }
}
