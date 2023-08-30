import 'dart:convert';

import 'package:bookflix/Utils/Routes/app_router_const.dart';
import 'package:bookflix/View/Screens/OnlyBooks/onlybook.dart';

import 'package:bookflix/View/Screens/Search/search.dart';
import 'package:bookflix/View/Screens/homepagewithbottomnavbar.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  final GoRouter router = GoRouter(initialLocation: '/', routes: [
    GoRoute(
      name: AppRouteConst.home,
      path: '/',
      builder: (context, state) {
        return const homepagewithbottomnavbar();
      },
    ),
    GoRoute(
      name: AppRouteConst.search,
      path: '/search',
      builder: (context, state) {
        return const Search();
      },
    ),
    GoRoute(
        name: AppRouteConst.onlyBookPage,
        path: '/onlyBook/:bookInfo',
        builder: (context, state) {
          final selectedBookJSON = state.pathParameters['bookInfo'];
          final selectedBook = jsonDecode(selectedBookJSON!);
          return OnlyBook(
            selectedBook: selectedBook,
          );
        })
  ]);
}
