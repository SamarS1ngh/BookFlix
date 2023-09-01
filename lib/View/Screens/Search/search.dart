import 'package:bookflix/Utils/Colors.dart';
import 'package:bookflix/Utils/Text.dart';
import 'package:bookflix/View/Widgets/tags_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController searchController = TextEditingController();

  //FocusNode myfocus = FocusNode();
  // bool isVisible = false;

  @override
  void initState() {
    super.initState();
    //myfocus.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
          backgroundColor: AppColors.backgroundColor,
          elevation: 1,
          leading: IconButton(
              onPressed: () => context.pop(),
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 25,
                color: AppColors.primaryColor,
              )),
          title: Text(
            'Explore',
            style: AppFonts.titleText,
          )),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: .045.sh,
                  width: .9.sw,
                  decoration: BoxDecoration(
                      color: AppColors.accentColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: TextField(
                    //autofocus: true,
                    // focusNode: myfocus,
                    controller: searchController,
                    style: const TextStyle(
                        fontSize: 15, color: AppColors.textPrimary),
                    cursorWidth: 1,
                    cursorColor: AppColors.primaryColor,
                    decoration: InputDecoration(
                      enabledBorder:
                          const OutlineInputBorder(borderSide: BorderSide.none),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(width: 1)),
                      suffixIcon: Visibility(
                        visible: searchController.text.isNotEmpty,
                        child: IconButton(
                            onPressed: () {
                              searchController.clear();
                            },
                            icon: const Icon(
                              Icons.clear,
                              size: 20,
                              color: AppColors.textSecondary,
                            )),
                      ),
                      //suffixIconConstraints: ,
                      hintText: 'psychology, colleen hoover, comics...',
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w400, color: Colors.grey),
                      contentPadding: EdgeInsets.symmetric(vertical: .01.sh),
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 28,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                ),
              ),
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
                        fontSize: 20),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0.015.sw, right: 0.015.sw),
                child:
                    SizedBox(height: 1.4.sh, width: 1.sw, child: const Tags()),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
