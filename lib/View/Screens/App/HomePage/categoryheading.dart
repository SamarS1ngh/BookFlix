// ignore_for_file: must_be_immutable

import 'package:bookflix/Utils/Colors.dart';
import 'package:bookflix/Utils/Text.dart';
import 'package:flutter/material.dart';

class CategoryHeading extends StatelessWidget {
  String text = '';
  CategoryHeading({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 20, 0, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              //color: AppColors.primaryColor
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 7, right: 7),
              child: Text(
                text,
                style: AppFonts.headingText,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.arrow_right_alt,
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
