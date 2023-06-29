import 'package:bookflix/Screens/profile.dart';
import 'package:bookflix/Screens/saved.dart';
import 'package:bookflix/Screens/search.dart';
import 'package:flutter/material.dart';
import 'Screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  List<Widget> Screenslist = [MyHomePage(), Saved(), Search(), profile()];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'BookFlix',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: MyHomePage());
  }
}
