// ignore_for_file: avoid_print

import 'package:bookflix/Utils/Routes/app_router_const.dart';
import 'package:bookflix/Utils/constants.dart';
import 'package:bookflix/View/Widgets/booklist.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../../Model/Books.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Item> popularBooks = [];
  List<Item> mangaBooks = [];
  List<Item> ficBooks = [];
  List<Item> scifiBooks = [];
  List<Item> nonficBooks = [];

  // Future<void> fetchDataForTopics() async {
  //   final List<Future<List<Item>>> futures = [
  //     fetchBooks(popularUrl),
  //     // fetchBooks(mangaUrl),
  //     // fetchBooks(scifiUrl),
  //     // fetchBooks(fictionUrl),
  //     // fetchBooks(nonficUrl)
  //   ];

  //   final List<List<Item>> results = await Future.wait(futures);
  //   setState(() {
  //     popularBooks = results[0];
  //     // mangaBooks = results[1];
  //     // scifiBooks = results[2];
  //     // ficBooks = results[3];
  //     // nonficBooks = results[4];
  //   });
  // }

  Future<void> fetchBooks(String url) async {
    try {
      print('Making api call');
      final response = await http.get(Uri.parse(url));
      if (response.body != null) {
        if (response.statusCode == 200) {
          print('Api call successful');

          final Map<String, dynamic> jsonData = json.decode(response.body);
          // print(response.body);
          print(Bookfetch.fromJson(jsonData).items);
          // print(jsonData);
          // final Bookfetch bookfetch = Bookfetch.fromJson(jsonData);
          if (jsonData.containsKey('items')) {
            try {
              setState(() {
                popularBooks = Bookfetch.fromJson(jsonData).items;
              });
            } catch (e) {
              print('error is :$e');
            }
          }

          print(popularBooks);
          // return bookfetch.items;
        } else {
          print('call failed with status code ${response.statusCode}');
          //   return [];
        }
      } else {
        print('response body is null');
        //   return [];
      }
    } catch (e) {
      print('error is :$e');
      //  return [];
    }
  }

  @override
  void initState() {
    super.initState();
    fetchBooks(popularUrl);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text(
          'BookFlix',
          style: TextStyle(color: Color.fromARGB(255, 230, 155, 243)),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: popularBooks.isEmpty
                    ? const SizedBox(
                        height: 25,
                        width: 25,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                        ))
                    : Image.network(
                        popularBooks[0].volumeInfo.imageLinks.thumbnail,
                        height: 100,
                        width: 100,
                      ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: GestureDetector(
                onTap: () {
                  context.pushNamed(AppRouteConst.search);
                },
                child: Container(
                  height: MediaQuery.of(context).size.height / 20,
                  width: MediaQuery.of(context).size.width / 1.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(255, 237, 236, 236)),
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.search),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Search books...',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Most Popular',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: Icon(
                      Icons.arrow_right_alt,
                      color: Color.fromARGB(255, 174, 40, 198),
                    ),
                  ),
                ],
              ),
            ),
            const Booklist(),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Manga',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: Icon(
                      Icons.arrow_right_alt,
                      color: Color.fromARGB(255, 174, 40, 198),
                    ),
                  ),
                ],
              ),
            ),
            const Booklist(),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Fiction',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: Icon(
                      Icons.arrow_right_alt,
                      color: Color.fromARGB(255, 174, 40, 198),
                    ),
                  ),
                ],
              ),
            ),
            const Booklist(),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sci-fi & fantasy',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: Icon(
                      Icons.arrow_right_alt,
                      color: Color.fromARGB(255, 174, 40, 198),
                    ),
                  ),
                ],
              ),
            ),
            const Booklist(),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Non-fiction',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: Icon(
                      Icons.arrow_right_alt,
                      color: Color.fromARGB(255, 174, 40, 198),
                    ),
                  ),
                ],
              ),
            ),
            const Booklist()
          ],
        ),
      ),
    ));
  }
}
