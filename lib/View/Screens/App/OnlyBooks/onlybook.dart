// ignore_for_file: prefer_const_constructors_in_immutables

import 'dart:developer';

import 'package:bookflix/Service/firestore.dart';
import 'package:bookflix/Utils/Colors.dart';
import 'package:bookflix/Utils/Text.dart';
import 'package:bookflix/View/Screens/App/OnlyBooks/webview.dart';
import 'package:bookflix/View/Screens/App/Widgets/more_from_author.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'package:google_fonts/google_fonts.dart';

class OnlyBook extends StatefulWidget {
  final selectedBook;
  OnlyBook({super.key, required this.selectedBook});

  @override
  State<OnlyBook> createState() => _OnlyBookState();
}

class _OnlyBookState extends State<OnlyBook> {
  @override
  void initState() {
    super.initState();
    log('page rebuilt');
  }

  bool saved = false;

  @override
  Widget build(BuildContext context) {
    final selectedBook = widget.selectedBook;
    DatabaseService db = DatabaseService();
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.backgroundColor,
          appBar: AppBar(
            actions: [
              StreamBuilder<DocumentSnapshot>(
                stream: FirebaseFirestore.instance
                .collection("SavedBooks")
                .doc(FirebaseAuth.instance.currentUser!.uid)
                .snapshots(),
               builder: (context, snapshot){
if(snapshot.connectionState == ConnectionState.waiting){
return CircularProgressIndicator();
}
else if(snapshot.connectionState == ConnectionState.active)
              {  Map<String,dynamic> data = snapshot.data?.data() as Map<String,dynamic>;
         List<dynamic> books = data["Book"];
         
         for(var i in books){
         if(i["id"]==selectedBook.id){
        saved = true;
         }
         }
                return   IconButton(
                  onPressed: () async {
                    setState(() {
                      saved = !saved;
                      if (saved) {
                        db.save(saveBook: selectedBook);
                        log('saving');
                      } else {
                        db.unsave(unsaveBook: selectedBook);
                      }
                    });
                    //  log(saved.toString());
                  },
                  icon: saved == true
                      ? const Icon(
                          Icons.bookmark,
                          color: Colors.white,
                          size: 27,
                        )
                      : const Icon(
                          Icons.bookmark_border,
                          color: Colors.white,
                          size: 27,
                        ));}
                        return Container();
               }),
            
            ],
            backgroundColor: AppColors.accentColor,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(.06.sw, 25, .06.sw, 50),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: Colors.red,
                        child: Image.network(
                          selectedBook.volumeInfo.imageLinks.thumbnail,
                          fit: BoxFit.cover,
                          height: .3.sh,
                          width: .42.sw,
                        ),
                      ),
                      SizedBox(
                        width: .04.sw,
                      ),
                      Expanded(
                        child: SizedBox(
                          height: .3.sh,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                selectedBook.volumeInfo.title,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: AppFonts.titleText,
                              ),
                              Text(
                                selectedBook.volumeInfo.authors[0].toString(),
                                style: AppFonts.subTitles,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Wrap(
                                runSpacing: 10,
                                spacing: 8,
                                children: (selectedBook.volumeInfo.categories ??
                                        [])
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
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: InkWell(
                                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                                  
                                    return WebViewContainer(url: selectedBook.volumeInfo.previewLink);
                                  })),
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
                    child: Text('Description',
                        style: AppFonts.highlightedText.copyWith(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            fontFamily: AppFonts.highlightedText.fontFamily)),
                  ),
                  const Divider(
                    color: Color(0xFF646464),
                  ),
                  Text(
                    selectedBook.volumeInfo.description,
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
                    author: selectedBook.volumeInfo.authors[0],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
