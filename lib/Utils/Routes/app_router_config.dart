import 'dart:convert';
import 'dart:developer';

import 'package:bookflix/View/Screens/App/BooksByTags/books_by_tags.dart';
import 'package:bookflix/View/Screens/App/OnlyBooks/onlybook.dart';
import 'package:bookflix/View/Screens/App/OnlyBooks/webview.dart';
import 'package:bookflix/View/Screens/Auth/login.dart';
import 'package:bookflix/View/Screens/App/Search/search.dart';
import 'package:bookflix/View/Screens/App/homepagewithbottomnavbar.dart';
import 'package:bookflix/View/Screens/Auth/registration.dart';
import 'package:bookflix/ViewModel/Providers/homeProvider.dart';

import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class AppRouter {
  static GoRouter router = GoRouter(debugLogDiagnostics: true, routes: [
    GoRoute(
        path: '/',
        builder: (context, state) {
          final isLoggedin = Provider.of<HomeBookFetch>(context).isLogged;
          return isLoggedin ? const homepagewithbottomnavbar() : const Login();
        },
        routes: [
          // GoRoute(
          //   path: 'login',
          //   builder: (context, state) {
          //     return Login();
          //   },
          // ),

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
              },
          ),
                GoRoute(path: 'webviewpage/:url',
                builder: (context, state) {
                  final url = state.pathParameters['url'];
                  return WebViewContainer(url: url!);
                },)
              ,

          GoRoute(
            path: 'signup',
            builder: (context, state) {
              return const Register();
            },
          ),
        ])

    // GoRoute(
    //   path: 'signup',
    //   builder: (context, state) {
    //     return Register();
    //   },
    // ),
    // GoRoute(
    //   path: 'login',
    //   builder: (context, state) {
    //     return Login();
    //   },
    // ),
  ]);
}
