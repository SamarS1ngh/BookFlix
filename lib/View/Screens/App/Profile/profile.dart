// ignore_for_file: camel_case_types

import 'package:bookflix/Service/firebase_auth.dart';
import 'package:bookflix/Utils/Colors.dart';
import 'package:bookflix/Utils/Routes/app_router_config.dart';
import 'package:bookflix/Utils/Text.dart';
import 'package:bookflix/ViewModel/Providers/homeProvider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<HomeBookFetch>(context, listen: false);
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Profile',
              ),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Center(
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 0.05.sh,
                      ),
                      Text(
                        'Currently signed in as ',
                        style: AppFonts.headingText,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        FirebaseAuth.instance.currentUser!.email!,
                        style: AppFonts.highlightedText.copyWith(fontSize: 15),
                      ),
                      //  const Divider(),
                      Padding(
                        padding: EdgeInsets.only(top: 0.3.sh),
                        child: InkWell(
                            onTap: () async {
                              await FirebaseAuthService().logout();
                              prov.isLogged = false;
                              prov.notifyListeners();
                              context.go('/');
                            },
                            child: Container(
                              width: 0.25.sw,
                              height: 0.04.sh,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: AppColors.accentColor),
                              child: Center(
                                child: Text(
                                  'LogOut',
                                  style: AppFonts.headingText
                                      .copyWith(color: AppColors.errorColor),
                                ),
                              ),
                            )),
                      ),
                      //  const Divider()
                    ],
                  ),
                ),
              ),
            )));
  }
}
