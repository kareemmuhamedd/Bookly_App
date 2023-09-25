import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home_feature/data/repos/home_repo_implementation.dart';
import 'package:bookly_app/features/home_feature/presetation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/splach/presentation/views/splash_screen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'core/utils/app_router.dart';
import 'core/utils/app_theme.dart';
import 'features/home_feature/presetation/manager/newest_books_cubit/newest_books_cubit.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            gitIt.get<HomeRepoImplementation>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            gitIt.get<HomeRepoImplementation>(),
          )..fetchNewestBooks(),
        )
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
        theme: Themes.darkTheme,
      ),
    );
  }
}
