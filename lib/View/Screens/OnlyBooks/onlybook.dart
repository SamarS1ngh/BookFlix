// ignore_for_file: prefer_const_constructors_in_immutables

import 'dart:developer';

import 'package:bookflix/Utils/Colors.dart';
import 'package:bookflix/Utils/Text.dart';
import 'package:bookflix/View/Widgets/more_from_author.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class OnlyBook extends StatefulWidget {
  final Map<String, dynamic>? selectedBook;
  OnlyBook({super.key, required this.selectedBook});

  @override
  State<OnlyBook> createState() => _OnlyBookState();
}

class _OnlyBookState extends State<OnlyBook> {
  @override
  Widget build(BuildContext context) {
    final selectedBook = widget.selectedBook;

    final categories = selectedBook!['volumeInfo']['categories'];
    for (var category in categories) {
      log(category);
    }
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.backgroundColor,
          appBar: AppBar(
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.bookmark_outline_outlined,
                    color: Colors.white,
                    size: 27,
                  ))
            ],
            leading: IconButton(
                onPressed: () => context.pop(),
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.primaryColor,
                )),
            backgroundColor: AppColors.accentColor,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 25, 20, 50),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: Colors.red,
                        child: Image.network(
                          selectedBook['volumeInfo']['imageLinks']['thumbnail'],
                          fit: BoxFit.cover,
                          height: height / 3.5,
                          width: width / 2.5,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: SizedBox(
                          height: height / 3.3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                selectedBook['volumeInfo']['title'],
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: AppFonts.titleText,
                              ),
                              // const SizedBox(
                              //   height: 10,
                              // ),
                              Text(
                                selectedBook['volumeInfo']['authors'][0]
                                    .toString(),
                                style: AppFonts.subTitles,
                              ),
                              // const SizedBox(
                              //   height: 10,
                              // ),
                              Wrap(
                                runSpacing: 10,
                                spacing: 8,
                                children: selectedBook['volumeInfo']
                                        ['categories']
                                    .map<Widget>((category) => Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 2),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border.all(
                                                color: AppColors.primaryColor),
                                          ),
                                          child: Text(
                                            category,
                                            textAlign: TextAlign.center,
                                            style: AppFonts.highlightedText,
                                          ),
                                        ))
                                    .toList(),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              InkWell(
                                onTap: () => log('yamete kudasai'),
                                borderRadius: BorderRadius.circular(15),
                                child: Container(
                                  width: width / 1.2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: AppColors.primaryColor),
                                  child: Text(
                                    'Preview',
                                    textAlign: TextAlign.center,
                                    style: AppFonts.headingText,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Description',
                      style: GoogleFonts.poppins(
                          color: AppColors.primaryColor,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Divider(
                    color: Color(0xFF646464),
                  ),
                  Text(
                    selectedBook['volumeInfo']['description'],
                    style: AppFonts.bodyText,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'More from Author',
                      style: GoogleFonts.poppins(
                          color: AppColors.primaryColor,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Divider(
                    color: Color(0xFF646464),
                  ),
                  AuthorList(
                    author: selectedBook['volumeInfo']['authors'][0],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
