// ignore_for_file: avoid_print

import 'package:bookflix/Utils/Colors.dart';
import 'package:bookflix/Utils/Routes/app_router_const.dart';
import 'package:bookflix/Utils/Text.dart';
import 'package:bookflix/View/Widgets/booklist.dart';
import 'package:bookflix/View/Widgets/categoryheading.dart';
import 'package:bookflix/ViewModel/Providers/homeProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<HomeBookFetch>(context, listen: false).fetchCategories();

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'BookFlix',
          style: AppFonts.titleText,
        ),
        elevation: 1,
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
                  height: 0.047.sh,
                  width: 0.85.sw,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.accentColor),
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.search,
                        color: AppColors.textSecondary,
                      ),
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
            CategoryHeading(text: 'Most popular'),
            Consumer<HomeBookFetch>(builder: (context, homeBookFetch, child) {
              final popularBooks = homeBookFetch.popularBooks;
              return Booklist(bookimgs: popularBooks);
            }),
            CategoryHeading(text: 'Manga'),
            Consumer<HomeBookFetch>(builder: (context, homeBookFetch, child) {
              final mangaBooks = homeBookFetch.mangaBooks;
              return Booklist(bookimgs: mangaBooks);
            }),
            CategoryHeading(text: 'Fiction'),
            Consumer<HomeBookFetch>(builder: (context, homeBookFetch, child) {
              final ficBooks = homeBookFetch.ficBooks;
              return Booklist(bookimgs: ficBooks);
            }),
            CategoryHeading(text: 'Sci-fi & fantasy'),
            Consumer<HomeBookFetch>(builder: (context, homeBookFetch, child) {
              final scifiBooks = homeBookFetch.scifiBooks;
              return Booklist(bookimgs: scifiBooks);
            }),
            CategoryHeading(text: 'Non-fiction'),
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
