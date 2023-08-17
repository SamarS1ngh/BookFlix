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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: Padding(
          padding: const EdgeInsets.all(0),
          child: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(
                Icons.arrow_back,
                size: 30,
              )),
        ),
        title: Container(
          height: 35,
          width: 300,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 229, 228, 228),
              borderRadius: BorderRadius.circular(5)),
          child: TextField(
            focusNode: myfocus,
            controller: searchController,
            style: const TextStyle(fontSize: 15),
            cursorWidth: 1.5,
            cursorHeight: 25,
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
