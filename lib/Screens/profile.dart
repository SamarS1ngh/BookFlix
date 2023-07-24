import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

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
            body: Text('profile')));
  }
}
