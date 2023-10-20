import 'package:bookflix/Utils/Colors.dart';
import 'package:bookflix/Utils/Text.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _pswd = TextEditingController();
  bool cansee = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.05.sw, vertical: 0.03.sh),
          child: SizedBox(
            width: 1.sw,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 0.2.sh),
                  child: Image.asset(
                    'assets/Logo.png',
                    height: 0.18.sh,
                  ),
                ),
                Text(
                  "Login to your account",
                  style: AppFonts.headingText.copyWith(
                      fontSize: 24, fontWeight: FontWeight.w400, height: 3),
                ),
                Container(
                  height: .06.sh,
                  decoration: BoxDecoration(
                      color: AppColors.accentColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    controller: _email,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.mail,
                          color: AppColors.textSecondary,
                        ),
                        label: const Text('Email'),
                        contentPadding: const EdgeInsets.all(8),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: AppColors.primaryColor)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                SizedBox(
                  height: 0.03.sh,
                ),
                Container(
                  height: .06.sh,
                  decoration: BoxDecoration(
                      color: AppColors.accentColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    obscureText: !cansee,
                    controller: _pswd,
                    decoration: InputDecoration(
                        suffix: IconButton(
                            onPressed: () {
                              setState(() {
                                cansee = !cansee;
                              });
                            },
                            icon: cansee
                                ? const Icon(
                                    Icons.visibility,
                                    color: AppColors.textPrimary,
                                  )
                                : const Icon(Icons.visibility_off)),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: AppColors.textSecondary,
                        ),
                        label: const Text('Password'),
                        contentPadding: const EdgeInsets.all(8),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: AppColors.primaryColor)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text('Forgot Password?'),
                ),
                SizedBox(
                  height: 0.03.sh,
                ),
                Container(
                  width: 1.sw,
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Login',
                        style: AppFonts.headingText,
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
