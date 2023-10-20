import 'dart:convert';
import 'dart:developer';

import 'package:bookflix/Utils/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../../ViewModel/Providers/tag_provider.dart';
import '../OnlyBooks/onlybook.dart';

class TagBooks extends StatelessWidget {
  const TagBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TagProvider>(
      builder: (context, tagProvider, child) {
        final list = tagProvider.tagBooks;
        log('haha bhai list ${list.toString()}');
        return list!.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : GridView.builder(
                itemCount: list.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 0.02.sh,
                    crossAxisSpacing: 0.02.sh,
                    childAspectRatio: 0.8),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      final selectedbook = list[index];
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return OnlyBook(selectedBook: selectedbook);
                      }));
                    },
                    child: Stack(children: [
                      Container(
                        decoration: const BoxDecoration(
                            color: AppColors.accentColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8))),
                        clipBehavior: Clip.antiAlias,
                        child: Image.network(
                          list[index].volumeInfo.imageLinks!.thumbnail!,
                          fit: BoxFit.fill,
                          width: 1.sw,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 1.sw,
                          height: 0.05.sh,
                          color: const Color(0xFF171717),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 8.0, top: 2, right: 1, bottom: 1),
                              child: Text(
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                list[index].volumeInfo.title.toString(),
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.textPrimary,
                                    fontSize: 12),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
                  );
                },
              );
      },
    );
  }
}
