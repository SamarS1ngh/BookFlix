import 'package:bookflix/Utils/Routes/app_router_const.dart';
import 'package:bookflix/View/Screens/HomePage/home.dart';
import 'package:bookflix/View/Screens/Profile/profile.dart';
import 'package:bookflix/View/Screens/Saved/saved.dart';
import 'package:bookflix/View/Screens/Search/search.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  final GoRouter router = GoRouter(initialLocation: '/', routes: [
    GoRoute(
      name: AppRouteConst.home,
      path: '/',
      builder: (context, state) {
        return const MyHomePage();
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
      name: AppRouteConst.saved,
      path: '/saved',
      builder: (context, state) {
        return const Saved();
      },
    ),
    GoRoute(
      name: AppRouteConst.profile,
      path: '/profile',
      builder: (context, state) {
        return const profile();
      },
    )
  ]);
}
