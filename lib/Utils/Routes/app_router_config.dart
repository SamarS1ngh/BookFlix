import 'dart:convert';

import 'package:bookflix/View/Screens/App/BooksByTags/books_by_tags.dart';
import 'package:bookflix/View/Screens/App/OnlyBooks/onlybook.dart';
import 'package:bookflix/View/Screens/Auth/login.dart';
import 'package:bookflix/View/Screens/App/Search/search.dart';
import 'package:bookflix/View/Screens/App/homepagewithbottomnavbar.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router = GoRouter(initialLocation: '/', routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return Login();
        // return homepagewithbottomnavbar();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'search',
          builder: (context, state) {
            return const Search();
          },
          routes: [
            GoRoute(
              path: 'booksByTags/:tagName',
              builder: (context, state) {
                final tagname = state.pathParameters['tagName'];
                return BooksByTags(tagName: tagname!);
              },
            )
          ],
        ),
        GoRoute(
            path: 'onlyBook/:bookInfo',
            builder: (context, state) {
              final selectedBookJSON = state.pathParameters['bookInfo'];

              final selectedBook = jsonDecode(selectedBookJSON!);
              return OnlyBook(
                selectedBook: selectedBook,
              );
            }),
      ],
    ),
  ]);
}
