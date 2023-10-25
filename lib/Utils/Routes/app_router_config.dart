import 'dart:convert';
import 'dart:developer';

import 'package:bookflix/View/Screens/App/BooksByTags/books_by_tags.dart';
import 'package:bookflix/View/Screens/App/OnlyBooks/onlybook.dart';
import 'package:bookflix/View/Screens/Auth/login.dart';
import 'package:bookflix/View/Screens/App/Search/search.dart';
import 'package:bookflix/View/Screens/App/homepagewithbottomnavbar.dart';
import 'package:bookflix/View/Screens/Auth/registration.dart';
import 'package:bookflix/ViewModel/Providers/homeProvider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class AppRouter {
  AppRouter({required BuildContext context});

  static final GoRouter router = GoRouter(
      debugLogDiagnostics: true,
      // redirect: (context, state) {
      //   final prov = Provider.of<HomeBookFetch>(context, listen: false);
      //   if (prov.isLoggedIn) {
      //     log('router context $context ');
      //     return '/home';
      //   }
      //   return '/login';
      // },
      initialLocation: '/login',
      routes: [
        GoRoute(
          path: '/login',
          builder: (context, state) {
            return const Login();
          },
        ),
        GoRoute(
          path: '/signup',
          builder: (context, state) {
            return const Register();
          },
        ),
        GoRoute(
            path: '/home',
            builder: (context, state) {
              return const homepagewithbottomnavbar();
            },
            routes: <RouteBase>[
              GoRoute(
                path: 'search',
                builder: (context, state) {
                  return Search();
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
            ]),

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
