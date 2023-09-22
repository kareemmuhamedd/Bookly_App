import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import '../../../../../core/errors/faillures.dart';
import '../../../data/models/book_model/book_model.dart';
import '../../../data/repos/home_repo.dart';
import '../featured_books_cubit/featured_books_cubit.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    Either<Failure, List<BookModel>> result = await homeRepo.fetchNewestBooks();
    return result.fold(
      (failure) {
        emit(NewestBooksFailure(failure.messageError));
      },
      (books) {
        emit(NewestBooksSuccess(books));
      },
    );
  }
}
