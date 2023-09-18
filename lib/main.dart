import 'package:bookflix/Utils/Colors.dart';
import 'package:bookflix/Utils/Routes/app_router_config.dart';
import 'package:bookflix/Utils/Text.dart';
import 'package:bookflix/View/Screens/Profile/profile.dart';
import 'package:bookflix/View/Screens/Saved/saved.dart';
import 'package:bookflix/View/Screens/Search/search.dart';
import 'package:bookflix/ViewModel/Providers/homeProvider.dart';
import 'package:bookflix/ViewModel/Providers/books_by_author.dart';
import 'package:bookflix/ViewModel/Providers/searchProvider.dart';
import 'package:bookflix/ViewModel/Providers/tag_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'View/Screens/HomePage/home.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  await dotenv.load(fileName: "lib/.env");
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => HomeBookFetch()),
      ChangeNotifierProvider(create: (context) => BooksbyAuthor()),
      ChangeNotifierProvider(
        create: (context) => SearchProvider(),
      ),
      ChangeNotifierProvider(create: (context) => TagProvider())
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
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          title: 'BookFlix',
          theme: ThemeData(
              colorScheme: const ColorScheme.dark(
                background: AppColors.backgroundColor,
                error: AppColors.errorColor,
                primary: AppColors.primaryColor,
                secondary: AppColors.accentColor,
              ),
              useMaterial3: true,
              primaryColor: AppColors.primaryColor,
              bottomNavigationBarTheme: const BottomNavigationBarThemeData(
                backgroundColor: AppColors.backgroundColor,
                selectedItemColor: AppColors.primaryColor,
                unselectedItemColor: AppColors.textSecondary,
              ),
              appBarTheme: AppBarTheme(
                  titleTextStyle: AppFonts.titleText,
                  backgroundColor: AppColors.backgroundColor,
                  actionsIconTheme: const IconThemeData(
                    color: Colors.white,
                    size: 27,
                  ),
                  iconTheme:
                      IconThemeData(color: AppColors.primaryColor, size: 27))),
        );
      },
    );
  }
}
