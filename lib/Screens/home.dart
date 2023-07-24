import 'package:bookflix/Constants.dart';
import 'package:bookflix/Screens/search.dart';
import 'package:bookflix/widgets/fiction.dart';
import 'package:bookflix/widgets/mangalist.dart';
import 'package:bookflix/widgets/nonfiction.dart';
import 'package:bookflix/widgets/scifilist.dart';
import 'package:bookflix/widgets/trendinglist.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../Model/Books.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Item> popularBooks = [];
  List<Item> mangaBooks = [];
  List<Item> ficBooks = [];
  List<Item> scifiBooks = [];
  List<Item> nonficBooks = [];

  Future<void> fetchDataForTopics() async {
    final List<Future<List<Item>>> futures = [
      fetchBooks(popularUrl),
      fetchBooks(mangaUrl),
      fetchBooks(scifiUrl),
      fetchBooks(fictionUrl),
      fetchBooks(nonficUrl)
    ];

    final List<List<Item>> results = await Future.wait(futures);
    setState(() {
      popularBooks = results[0];
      mangaBooks = results[1];
      scifiBooks = results[2];
      ficBooks = results[3];
      nonficBooks = results[4];
    });
  }

  Future<List<Item>> fetchBooks(String url) async {
    try {
      print('Making api call');
      final response = await http.get(Uri.parse(url));
      if (response.body != null) {
        if (response.statusCode == 200) {
          print('Api call successful');
          final Map<String, dynamic> jsonData = json.decode(response.body);
          return Bookfetch.fromJson(jsonData).items;
        } else {
          return [];
        }
      } else {
        return [];
      }
    } catch (e) {
      print("call failed");
      print(e);
      return [];
    }
  }

  @override
  void initState() {
    super.initState();
    fetchDataForTopics();
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
            Container(
              height: 60,
              width: 100,
              child: popularBooks.isEmpty
                  ? CircularProgressIndicator()
                  : Image.network(
                      popularBooks[0].volumeInfo.imageLinks.thumbnail),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return Search();
                  }));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height / 20,
                  width: MediaQuery.of(context).size.width / 1.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromARGB(255, 237, 236, 236)),
                  child: Row(
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
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
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
            trendinglist(),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
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
            mangalist(),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
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
            fictionlist(),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
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
            scifilist(),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
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
            nonficlist()
          ],
        ),
      ),
    ));
  }
}
