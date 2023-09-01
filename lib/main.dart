import 'package:bookflix/Utils/Routes/app_router_config.dart';
import 'package:bookflix/View/Screens/Profile/profile.dart';
import 'package:bookflix/View/Screens/Saved/saved.dart';
import 'package:bookflix/View/Screens/Search/search.dart';
import 'package:bookflix/ViewModel/Providers/homeProvider.dart';
import 'package:bookflix/ViewModel/Providers/books_by_author.dart';
import 'package:bookflix/ViewModel/Providers/searchProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'View/Screens/HomePage/home.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => HomeBookFetch()),
      ChangeNotifierProvider(create: (context) => BooksbyAuthor()),
      ChangeNotifierProvider(create: (context) => SearchProvider())
    ], child: MyApp()),
  );
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
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: Size(width, height),
      builder: (context, child) {
        return MaterialApp.router(
          routerConfig: AppRouter().router,
          debugShowCheckedModeBanner: false,
          title: 'BookFlix',
          theme: ThemeData(
            useMaterial3: true,
          ),
        );
      },
    );
  }
}
