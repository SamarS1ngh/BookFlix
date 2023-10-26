import 'package:bookflix/Utils/Colors.dart';
import 'package:bookflix/Utils/Routes/app_router_config.dart';
import 'package:bookflix/Utils/Text.dart';
import 'package:bookflix/View/Screens/Auth/login.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../Service/firebase_auth.dart';
import '../../../Utils/snackbars.dart';
import '../../../ViewModel/Providers/homeProvider.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final FirebaseAuthService authService = FirebaseAuthService();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _pswd = TextEditingController();
  bool cansee = false;
  // validator(String email, String pswd, BuildContext context) {
  //   if (email == '') {
  //     Message().message('Email field can\'t be empty');
  //   } else if (pswd.length < 8) {
  //     Message().message('Password length can\'t be less than 8 characters.');
  //   }
  // }
  @override
  void initState() {
    super.initState();
    _email.text = '';
    _pswd.text = '';
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    _email.dispose();
    _pswd.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<HomeBookFetch>(context, listen: false);
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
                  padding: EdgeInsets.only(top: 0.15.sh),
                  child: Image.asset(
                    'assets/Logo.png',
                    height: 0.18.sh,
                  ),
                ),
                Text(
                  "Create your account",
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
                SizedBox(
                  height: 0.03.sh,
                ),
                Container(
                  width: 1.sw,
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextButton(
                      onPressed: () {
                        authService.signup(
                            email: _email.text,
                            pswd: _pswd.text,
                            context: context);
                        if (prov.isLogged) {
                          context.go('/');
                        }
                      },
                      child: Text(
                        'Signup',
                        style: AppFonts.headingText,
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    context.go('/');
                  },
                  child: RichText(
                      text: TextSpan(
                          text: "Already have an account?",
                          style:
                              AppFonts.smolText.copyWith(color: Colors.white),
                          children: [
                        TextSpan(
                            text: ' Login', style: AppFonts.highlightedText)
                      ])),
                ),
                SizedBox(
                  height: 0.03.sh,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 1,
                      width: 0.35.sw,
                      color: AppColors.textSecondary,
                    ),
                    Text(
                      'Or',
                      style: AppFonts.smolText,
                    ),
                    Container(
                      height: 1,
                      width: 0.35.sw,
                      color: AppColors.textSecondary,
                    ),
                  ],
                ),
                SizedBox(
                  height: 0.03.sh,
                ),
                Container(
                  width: 1.sw,
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: AppColors.primaryColor, width: 1),
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/google.png',
                            height: 35,
                          ),
                          Text(
                            'Continue with Google',
                            style: AppFonts.headingText,
                          )
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
