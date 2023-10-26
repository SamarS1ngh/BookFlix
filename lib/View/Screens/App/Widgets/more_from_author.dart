// ignore_for_file: prefer_const_constructors_in_immutables

import 'dart:convert';
import 'package:bookflix/Model/book_fetch.dart';
import 'package:bookflix/Utils/Colors.dart';
import 'package:bookflix/Utils/Text.dart';
import 'package:bookflix/View/Screens/App/OnlyBooks/onlybook.dart';
import 'package:bookflix/ViewModel/Providers/books_by_author.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../../Model/item.dart';

class AuthorList extends StatefulWidget {
  final String author;
  AuthorList({super.key, required this.author});

  @override
  State<AuthorList> createState() => _AuthorListState();
}

class _AuthorListState extends State<AuthorList> {
  @override
  void initState() {
    Provider.of<BooksbyAuthor>(context, listen: false).clearBooks();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final author = widget.author;

    Provider.of<BooksbyAuthor>(context, listen: false)
        .fetchBooksbyAuthorName(author);

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Consumer<BooksbyAuthor>(
      builder: (context, booksBytheAuthor, child) {
        final List<Item>? list = booksBytheAuthor.booksByAuthor;

        return list == null
            ? Text(
                'Author Information not available',
                style: AppFonts.subTitles,
              )
            : ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: list.length,
                itemBuilder: (context, index) {
                  final volumeInfo = list[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                          return OnlyBook(selectedBook: volumeInfo);
                        }));
                      },
                      child: Card(
                        color: AppColors.accentColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: .5,
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          height: height / 5.5,
                          width: width,
                          child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.network(
                                  volumeInfo.volumeInfo.imageLinks!.thumbnail,
                                  height: height,
                                  width: width / 3.5,
                                  fit: BoxFit.fitHeight,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          volumeInfo.volumeInfo.title,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: AppFonts.headingText,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          volumeInfo.volumeInfo.authors[0],
                                          style: GoogleFonts.ubuntu(
                                              color: AppColors.primaryColor,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15),
                                        ),
                                      ),
                                      Text(
                                        //  textAlign: TextAlign.center,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 3,
                                        volumeInfo.volumeInfo.description ?? "",
                                        style: AppFonts.smolText,
                                      )
                                    ],
                                  ),
                                )
                              ]),
                        ),
                      ),
                    ),
                  );
                },
              );
      },
    );
  }
}
