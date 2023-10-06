// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'BookFlix',
                style: TextStyle(color: Color.fromARGB(255, 230, 155, 243)),
              ),
              elevation: 0,
              backgroundColor: Colors.white,
            ),
            body: const Text('profile')));
  }
}
