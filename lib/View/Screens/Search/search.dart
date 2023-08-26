import 'package:bookflix/Utils/Colors.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController searchController = TextEditingController();

  FocusNode myfocus = FocusNode();

  @override
  void initState() {
    super.initState();
    myfocus.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 28, 28, 28),
        elevation: 1,
        leading: Padding(
          padding: const EdgeInsets.all(0),
          child: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 30,
                color: AppColors.primaryColor,
              )),
        ),
        title: Container(
          height: 35,
          width: 300,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 0, 0, 0),
              borderRadius: BorderRadius.circular(5)),
          child: TextField(
            focusNode: myfocus,
            controller: searchController,
            style: const TextStyle(fontSize: 15, color: AppColors.textPrimary),
            cursorWidth: 1.5,
            cursorHeight: 25,
            cursorColor: AppColors.primaryColor,
            decoration: InputDecoration(
              enabledBorder:
                  const OutlineInputBorder(borderSide: BorderSide.none),
              focusedBorder:
                  const OutlineInputBorder(borderSide: BorderSide(width: 1)),
              suffix: IconButton(
                  onPressed: () {
                    searchController.clear();
                  },
                  icon: const Icon(
                    Icons.clear,
                    size: 20,
                    color: AppColors.textSecondary,
                  )),
              hintText: 'Psychology, colleen hoover',
              hintStyle: const TextStyle(
                  fontWeight: FontWeight.w400, color: Colors.grey),
              contentPadding: const EdgeInsets.all(-10),
              prefixIcon: const Icon(
                Icons.search,
                size: 20,
              ),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
            ),
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () => myfocus.unfocus(),
      ),
    ));
  }
}
