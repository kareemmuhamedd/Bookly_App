import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home_feature/data/repos/home_repo_implementation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final gitIt = GetIt.instance;

void setupServiceLocator() {
  gitIt.registerSingleton<ApiService>(ApiService(Dio()));
  gitIt.registerSingleton<HomeRepoImplementation>(
    HomeRepoImplementation(
      gitIt.get<ApiService>(),
    ),
  );
}
