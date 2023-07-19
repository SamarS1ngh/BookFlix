import 'package:bookflix/Screens/search.dart';
import 'package:bookflix/widgets/fiction.dart';
import 'package:bookflix/widgets/mangalist.dart';
import 'package:bookflix/widgets/nonfiction.dart';
import 'package:bookflix/widgets/scifilist.dart';
import 'package:bookflix/widgets/trendinglist.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                    'Trending',
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
