import 'package:bookflix/Utils/Routes/app_router_config.dart';
import 'package:bookflix/View/Screens/Profile/profile.dart';
import 'package:bookflix/View/Screens/Saved/saved.dart';
import 'package:bookflix/View/Screens/Search/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'View/Screens/HomePage/home.dart';
import 'View/Widgets/homepagewithbottomnavbar.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});
  // ignore: non_constant_identifier_names
  List<Widget> Screenslist = [
    const MyHomePage(),
    const Saved(),
    const Search(),
    const profile()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: AppRouter().router.routeInformationParser,
      routerDelegate: AppRouter().router.routerDelegate,
      debugShowCheckedModeBanner: false,
      title: 'BookFlix',
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
