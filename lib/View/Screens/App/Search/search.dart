import 'package:bookflix/Model/item.dart';
import 'package:bookflix/Utils/Colors.dart';
import 'package:bookflix/Utils/Text.dart';
import 'dart:developer';
import 'package:bookflix/View/Screens/App/BooksByTags/tags_grid.dart';
import 'package:bookflix/ViewModel/Providers/searchProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../OnlyBooks/onlybook.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController _searchController = TextEditingController();
  String searched = '';
  SearchProvider searchProvider = SearchProvider();

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<SearchProvider>(context, listen: false);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
          elevation: 1,
          title: const Text(
            'Explore',
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: .05.sh,
                width: .9.sw,
                decoration: BoxDecoration(
                    color: AppColors.accentColor,
                    borderRadius: BorderRadius.circular(5)),
                child: TextFormField(
                  onChanged: (value) {
                    setState(() {
                      searched = _searchController.text;
                    });

                    prov.search(value);
                    prov.notifyListeners();
                  },
                  controller: _searchController,
                  style: const TextStyle(
                      fontSize: 15, color: AppColors.textPrimary),
                  cursorWidth: 1,
                  cursorColor: AppColors.primaryColor,
                  decoration: InputDecoration(
                    enabledBorder:
                        const OutlineInputBorder(borderSide: BorderSide.none),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(width: 1)),
                    suffixIcon: searched.isNotEmpty
                        ? IconButton(
                            onPressed: () {
                              _searchController.clear();
                              setState(() {
                                searched = _searchController.text;
                              });
                            },
                            icon: const Icon(
                              Icons.clear,
                              size: 20,
                              color: AppColors.textSecondary,
                            ))
                        : null,
                    hintText: 'psychology, colleen hoover, comics...',
                    hintStyle: const TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.grey),
                    contentPadding: EdgeInsets.symmetric(vertical: .01.sh),
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 27,
                      color: AppColors.textSecondary,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
              ),
            ),
            searched.isEmpty
                ? Padding(
                    padding: EdgeInsets.only(
                        left: .03.sw, top: .03.sh, bottom: .02.sh),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Browse tags',
                        style: GoogleFonts.poppins(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                    ),
                  )
                : Container(),
            searched.isEmpty
                ? Padding(
                    padding: EdgeInsets.only(left: 0.015.sw, right: 0.015.sw),
                    child: SizedBox(
                        height: 1.4.sh, width: 1.sw, child: const Tags()),
                  )
                : Consumer<SearchProvider>(
                    builder: (context, value, child) {
                      print('priting $searched');
                      final res = value.searchedBooks;
                      if (res.isEmpty) {
                        return const Center(child: CircularProgressIndicator());
                      }
                      log(res.toString());
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: res.length,
                        itemBuilder: (context, index) {
                          final volumeInfo = res[index];
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) {
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
                                          volumeInfo.volumeInfo.imageLinks
                                                  ?.thumbnail ??
                                              'https://imgs.search.brave.com/CVm-5INAaGheoD5qdKJNbN6ZNdirgiJT-_TIF_LTLG8/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzL2JmL2Yz/LzY2L2JmZjM2NmU3/YjNkNzJjN2MwMTNm/MzBjOTM5NGQ1Mjc4/LmpwZw',
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
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: AppFonts.headingText,
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  volumeInfo
                                                      .volumeInfo.authors[0],
                                                  style: GoogleFonts.ubuntu(
                                                      color: AppColors
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 15),
                                                ),
                                              ),
                                              Text(
                                                //  textAlign: TextAlign.center,
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 3,
                                                volumeInfo.volumeInfo
                                                        .description ??
                                                    "",
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
                  )

            // FutureBuilder(
            //     future: searchProvider.search(searched),
            //     builder: (context, snapshot) {
            //       if (snapshot.data == null) {
            //         return Center(
            //           child: Text(
            //             'No book found',
            //             style: AppFonts.bodyText,
            //           ),
            //         );
            //       }
            //       final res = snapshot.data;
            //       log('result ${res.toString()}');
            //       return Container();
            //     },
            //   )
          ],
        ),
      ),
    ));
  }
}
