import 'package:bookly_app/core/errors/faillures.dart';
import 'package:bookly_app/core/utils/api_service.dart';

import 'package:bookly_app/features/home_feature/data/models/book_model/book_model.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'home_repo.dart';

class HomeRepoImplementation extends HomeRepo {
  final ApiService apiService;

  HomeRepoImplementation(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      Map<String, dynamic> data = await apiService.get(
        endPoint:
            'volumes?Filtering=free-ebooks&Sorting=newest &q=subject:programming',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      /// in this return i must tell he that i will return the write side (the success operation)
      return right(books);
    } catch (e) {
      /// i am in the exception so i will return the left write (the failure operation)
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      Map<String, dynamic> data = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=subject:cooking',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
