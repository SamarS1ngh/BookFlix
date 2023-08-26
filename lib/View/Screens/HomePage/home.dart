// ignore_for_file: avoid_print

import 'dart:developer';
import 'package:bookflix/Utils/Routes/app_router_const.dart';
import 'package:bookflix/View/Widgets/booklist.dart';
import 'package:bookflix/ViewModel/Providers/homeProvider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Provider.of<HomeBookFetch>(context, listen: false).fetchCategories();

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
            Consumer<HomeBookFetch>(builder: (context, homeBookFetch, child) {
              final popularBooks = homeBookFetch.popularBooks;
              return Booklist(bookimgs: popularBooks);
            }),
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
            Consumer<HomeBookFetch>(builder: (context, homeBookFetch, child) {
              final mangaBooks = homeBookFetch.mangaBooks;
              return Booklist(bookimgs: mangaBooks);
            }),
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
            Consumer<HomeBookFetch>(builder: (context, homeBookFetch, child) {
              final ficBooks = homeBookFetch.ficBooks;
              return Booklist(bookimgs: ficBooks);
            }),
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
            Consumer<HomeBookFetch>(builder: (context, homeBookFetch, child) {
              final scifiBooks = homeBookFetch.scifiBooks;
              return Booklist(bookimgs: scifiBooks);
            }),
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
            Consumer<HomeBookFetch>(builder: (context, homeBookFetch, child) {
              final nonficBooks = homeBookFetch.nonficBooks;
              return Booklist(bookimgs: nonficBooks);
            }),
          ],
        ),
      ),
    ));
  }
}
