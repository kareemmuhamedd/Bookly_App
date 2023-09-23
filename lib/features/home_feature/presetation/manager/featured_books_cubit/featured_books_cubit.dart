import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/errors/faillures.dart';
import 'package:bookly_app/features/home_feature/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import '../../../data/models/book_model/book_model.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    Either<Failure, List<BookModel>> result =
        await homeRepo.fetchFeaturedBooks();
    return result.fold(
      // this is the left side 'ERROR'
      (Failure failure) {
        emit(FeaturedBooksFailure(failure.messageError));
      },
      // this is the write side 'SUCCESS'
      (List<BookModel> books) {
        emit(FeaturedBooksSuccess(books));
      },
    );
  }
}
