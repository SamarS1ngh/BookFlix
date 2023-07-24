import 'package:flutter/material.dart';

class Saved extends StatefulWidget {
  const Saved({super.key});

  @override
  State<Saved> createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
                elevation: .5,
                title: Text(
                  'Saved',
                  style: TextStyle(fontWeight: FontWeight.w400),
                )),
            body: Text('Saved')));
  }
}
