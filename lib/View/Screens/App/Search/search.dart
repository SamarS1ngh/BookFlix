import 'package:bookflix/Model/item.dart';
import 'package:bookflix/Utils/Colors.dart';

import 'package:bookflix/View/Screens/App/BooksByTags/tags_grid.dart';
import 'package:bookflix/ViewModel/Providers/searchProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController _searchController = TextEditingController();
  String searched='';
  SearchProvider searchProvider = SearchProvider();
  @override
  Widget build(BuildContext context) {
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
                  
                    print(searched);
                    searchProvider.search(searched);
         
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
                    suffixIcon: searched.isNotEmpty?
                         IconButton(
                            onPressed: () {
                              _searchController.clear();
                            },
                            icon: const Icon(
                              Icons.clear,
                              size: 20,
                              color: AppColors.textSecondary,
                            )):null
                       ,
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
            searched.isEmpty?
           Padding(
              padding:
                  EdgeInsets.only(left: .03.sw, top: .03.sh, bottom: .02.sh),
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
           :Container()
            ,
           searched.isEmpty?
             Padding(
              padding: EdgeInsets.only(left: 0.015.sw, right: 0.015.sw),
              child: SizedBox(height: 1.4.sh, width: 1.sw, child: const Tags()),
            )
            :Consumer<SearchProvider>(builder: (context, value, child) {
              final book = value.searchedBooks;
           //   print('book ${book[0].volumeInfo.title}');
             return Text('.volumeInfo.title');
            },)
          ],
        ),
      ),
    ));
  }
}
