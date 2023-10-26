// ignore_for_file: camel_case_types

import 'package:bookflix/Service/firebase_auth.dart';
import 'package:bookflix/Utils/Routes/app_router_config.dart';
import 'package:bookflix/Utils/Text.dart';
import 'package:bookflix/ViewModel/Providers/homeProvider.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
                child: Column(
                  children: [
                    const Divider(),
                    InkWell(
                        onTap: () async {
                          await FirebaseAuthService().logout();
                          prov.isLogged = false;
                          prov.notifyListeners();
                          context.go('/');
                        },
                        child: Container(
                          width: 1.sw,
                          child: Text(
                            'LogOut',
                            style: AppFonts.headingText,
                          ),
                        )),
                    const Divider()
                  ],
                ),
              ),
            )));
  }
}
