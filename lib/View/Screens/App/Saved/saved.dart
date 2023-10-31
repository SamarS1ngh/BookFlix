import 'dart:developer';

import 'package:bookflix/Utils/Colors.dart';
import 'package:bookflix/Utils/Text.dart';
import 'package:bookflix/View/Screens/App/OnlyBooks/onlybook.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class Saved extends StatefulWidget {
  const Saved({super.key});

  @override
  State<Saved> createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
                elevation: .5,
                title: const Text(
                  'Saved',
                  style: TextStyle(fontWeight: FontWeight.w400),
                )),
            body: StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection("SavedBooks")
                  .doc(FirebaseAuth.instance.currentUser!.uid)
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (snapshot.connectionState == ConnectionState.active) {
                  if (snapshot.data != null) {
                    Map<String, dynamic> data =
                        snapshot.data?.data() as Map<String, dynamic>;
                    final List savedList = data["Book"] ?? [];
                    // print(savedList.toString());
                    return savedList.isEmpty
                        ? Center(
                            child: Text(
                              'Add books to your collection',
                              style: AppFonts.bodyText,
                            ),
                          )
                        : GridView.builder(
                            itemCount: savedList.length,
                            itemBuilder: (context, index) {
                              //  print(savedList[index]['volumeInfo']['title']);
                              return GestureDetector(
                                onTap: () {
                                  // log('yamette');
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) {
                                    log(savedList[index]['item'].toString());
                                    return OnlyBook(
                                        selectedBook:
                                            savedList[index]['item'] ?? []);
                                  }));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Stack(children: [
                                    Container(
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(8),
                                              topRight: Radius.circular(8))),
                                      clipBehavior: Clip.antiAlias,
                                      child: Image.network(
                                        savedList[index]["item"]['volumeInfo']
                                            ['imageLinks']['thumbnail'],
                                        width: 180,
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
                                                left: 8.0,
                                                top: 2,
                                                right: 1,
                                                bottom: 1),
                                            child: Text(
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              savedList[index]['item']
                                                      ['volumeInfo']['title']
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
                            },
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 2,
                              crossAxisCount: 2,
                              crossAxisSpacing: 0.02.sw,
                              mainAxisSpacing: 0.05.sw,
                            ),
                          );
                  }
                }
                return Container();
              },
            )));
  }
}
