// ignore_for_file: must_be_immutable

import 'package:bookflix/View/Widgets/tagBooks.dart';
import 'package:bookflix/ViewModel/Providers/tag_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class BooksByTags extends StatefulWidget {
  BooksByTags({super.key, required this.tagName});
  String tagName;

  @override
  State<BooksByTags> createState() => _BooksByTagsState();
}

class _BooksByTagsState extends State<BooksByTags> {
  @override
  void initState() {
    super.initState();
    Provider.of<TagProvider>(context, listen: false).clear();
  }

  @override
  Widget build(BuildContext context) {
    final tagName = widget.tagName;
    Provider.of<TagProvider>(context, listen: false).fetchtags(tagName);

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(tagName),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0.04.sw),
        child: const TagBooks(),
      ),
    ));
  }
}
