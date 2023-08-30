// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:bookflix/Utils/Colors.dart';
import 'package:bookflix/Utils/Routes/app_router_const.dart';
import 'package:bookflix/Utils/Text.dart';
import 'package:bookflix/ViewModel/books_by_author.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../Model/Books.dart';

class AuthorList extends StatefulWidget {
  final String author;
  AuthorList({super.key, required this.author});

  @override
  State<AuthorList> createState() => _AuthorListState();
}

class _AuthorListState extends State<AuthorList> {
  @override
  Widget build(BuildContext context) {
    final author = widget.author;
    Provider.of<BooksbyAuthor>(context, listen: false)
        .fetchBooksbyAuthorName(author);

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Consumer<BooksbyAuthor>(
      builder: (context, booksBytheAuthor, child) {
        final list = booksBytheAuthor.booksByAuthor;
        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: list!.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  context.pushNamed(AppRouteConst.onlyBookPage);
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
                            list[index].volumeInfo.imageLinks!.thumbnail,
                            height: height,
                            width: width / 3.5,
                            fit: BoxFit.fitHeight,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  list[index].volumeInfo.title,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppFonts.headingText,
                                ),
                                Text(
                                  list[index].volumeInfo.authors[0],
                                  style: GoogleFonts.ubuntu(
                                      color: AppColors.primaryColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                ),
                                Text(
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                  list[index].volumeInfo.description,
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
