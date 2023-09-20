import 'package:bookly_app/features/search_feature/presentation/views/search_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../features/home_feature/presetation/views/book_details_screen.dart';
import '../../features/home_feature/presetation/views/home_screen.dart';
import '../../features/splach/presentation/views/splash_screen.dart';

abstract class AppRouter {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashScreen();
        },
      ),
      GoRoute(
        path: HomeScreen.routeName,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
      ),
      GoRoute(
        path: BookDetailsScreen.routeName,
        builder: (BuildContext context, GoRouterState state) {
          return const BookDetailsScreen();
        },
      ),
      GoRoute(
        path: SearchScreen.routeName,
        builder: (BuildContext context, GoRouterState state) {
          return const SearchScreen();
        },
      )
    ],
  );
}
