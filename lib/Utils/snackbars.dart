import 'package:bookflix/Utils/Colors.dart';
import 'package:bookflix/Utils/Text.dart';
import 'package:flutter/material.dart';

class Message {
  void message(String error, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: AppColors.accentColor,
        duration: Duration(seconds: 2),
        content: Text(
          error,
          style: AppFonts.bodyText.copyWith(fontSize: 12),
        )));
  }
}



// final wrongSignup = SnackBar(
//     backgroundColor: AppColors.accentColor,
//     duration: Duration(seconds: 2),
//     content: Text(
//       'Either Invalid credentials or credentials already exist.',
//       style: AppFonts.bodyText.copyWith(fontSize: 12),
//     ));

// final wrongLogin = SnackBar(
//     backgroundColor: AppColors.accentColor,
//     duration: Duration(seconds: 2),
//     content: Text(
//       'Invalid Credentials. Try Resetting the password',
//       style: AppFonts.bodyText.copyWith(fontSize: 12),
//     ));

// final halfEmail = SnackBar(
//     backgroundColor: AppColors.accentColor,
//     duration: Duration(seconds: 2),
//     content: Text(
//       'Email field can\'t be empty',
//       style: AppFonts.bodyText.copyWith(fontSize: 12),
//     ));

// final bekarPswd = SnackBar(
//     backgroundColor: AppColors.accentColor,
//     duration: Duration(seconds: 2),
//     content: Text(
//       'Password can\'t be less than 8 characters',
//       style: AppFonts.bodyText.copyWith(fontSize: 12),
//     ));
