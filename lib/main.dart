import 'dart:developer';

import 'package:bookflix/Service/firebase_auth.dart';
import 'package:bookflix/Utils/Colors.dart';
import 'package:bookflix/Utils/Routes/app_router_config.dart';
import 'package:bookflix/Utils/Text.dart';
import 'package:bookflix/View/Screens/App/Profile/profile.dart';
import 'package:bookflix/View/Screens/App/Saved/saved.dart';
import 'package:bookflix/View/Screens/App/Search/search.dart';
import 'package:bookflix/ViewModel/Providers/homeProvider.dart';
import 'package:bookflix/ViewModel/Providers/books_by_author.dart';
import 'package:bookflix/ViewModel/Providers/saved_provider.dart';
import 'package:bookflix/ViewModel/Providers/searchProvider.dart';
import 'package:bookflix/ViewModel/Providers/tag_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'View/Screens/App/HomePage/home.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await Firebase.initializeApp();
  FirebaseAuth.instance.setPersistence(Persistence.LOCAL);

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => HomeBookFetch()),
      ChangeNotifierProvider(create: (context) => BooksbyAuthor()),
      ChangeNotifierProvider(create: (context) => SavedBooks()),
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

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<HomeBookFetch>(context, listen: false);
    //  final AppRouter ar = AppRouter(context: context);
    FirebaseAuthService().FirebaseAuthfunction(context);
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: Size(width, height),
      builder: (context, child) {
        return StreamBuilder<User?>(
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.active) {
              User? user = snapshot.data;
              log("rebuild");
              if (user != null) {
                prov.isLogged = true;
                prov.notifyListeners();
                log(prov.isLogged.toString());
              } else {
                prov.isLogged = false;
                prov.notifyListeners();
                log(prov.isLogged.toString());
              }
            }
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
                      iconTheme: const IconThemeData(
                          color: AppColors.primaryColor, size: 27))),
            );
          },
        );
      },
    );
  }
}
