import 'dart:convert';
import 'dart:developer';

import 'package:bookflix/Utils/Colors.dart';
import 'package:bookflix/Utils/Routes/app_router_const.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Model/Books.dart';

// ignore: must_be_immutable
class Booklist extends StatefulWidget {
  List<Item>? bookimgs;
  Booklist({super.key, required this.bookimgs});

  @override
  State<Booklist> createState() => _BooklistState();
}

class _BooklistState extends State<Booklist> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 230,
        child: ListView.builder(

            // padding: EdgeInsets.fromLTRB(10, 0, 10, 010),
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: widget.bookimgs?.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  final selectedbook = widget.bookimgs![index];
                  context.pushNamed(AppRouteConst.onlyBookPage,
                      pathParameters: {'bookInfo': jsonEncode(selectedbook)});
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: widget.bookimgs == null
                      ? Container(
                          width: 180,
                          decoration: BoxDecoration(
                              color: AppColors.accentColor,
                              borderRadius: BorderRadius.circular(10)),
                          //  height: 20,
                          child: const Center(
                            child: CircularProgressIndicator(
                              color: Color.fromARGB(255, 65, 64, 64),
                            ),
                          ),
                        )
                      : Stack(children: [
                          Container(
                            //  height: 500,
                            decoration: const BoxDecoration(
                                // color: Colors.black,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8))),
                            clipBehavior: Clip.antiAlias,
                            child: Image.network(
                              widget.bookimgs![index].volumeInfo.imageLinks!
                                  .thumbnail,
                              width: 180,
                              //      height: 500,
                              fit: BoxFit.cover,
                              isAntiAlias: false,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: 180,
                              height: 35,
                              color: const Color(0xFF171717),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, top: 2, right: 1, bottom: 1),
                                  child: Text(
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    widget.bookimgs![index].volumeInfo.title
                                        .toString(),
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
                ),
              );
            }));
  }
}
