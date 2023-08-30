// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Colors.dart';

class AppFonts {
  static TextStyle titleText =
      GoogleFonts.kanit(color: AppColors.textPrimary, fontSize: 25);

  static TextStyle headingText = GoogleFonts.ubuntu(
      color: AppColors.textPrimary, fontWeight: FontWeight.w500, fontSize: 17);

  static TextStyle highlightedText = GoogleFonts.ubuntu(
      color: AppColors.primaryColor, fontWeight: FontWeight.w500, fontSize: 12);
  static TextStyle bodyText = GoogleFonts.poppins(
      fontWeight: FontWeight.w400, color: AppColors.textPrimary, fontSize: 15);
  static TextStyle smolText = GoogleFonts.poppins(
      color: const Color.fromARGB(255, 172, 168, 168), fontSize: 11);
  static TextStyle subTitles = GoogleFonts.montserrat(
      fontWeight: FontWeight.w400,
      color: AppColors.textSecondary,
      fontSize: 17);
}
