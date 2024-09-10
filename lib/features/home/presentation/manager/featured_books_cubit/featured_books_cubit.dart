import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_books_app/features/home/data/models/book_model/book_model.dart';
import 'package:my_books_app/features/home/data/models/book_model/repos/home_repo.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    print('Fetching featured books...');
    emit(FeaturedBooksLoading());

    try {
      var result = await homeRepo.fetchFeaturedBooks();
      result.fold((failure) {
        print('Failed to fetch: ${failure.errMessage}');
        emit(FeaturedBooksFAilure(failure.errMessage));
      }, (books) {
        print('Success: Fetched ${books.length} books');
        emit(FeaturedBooksSuccess(books));
      });
    } catch (e) {
      print('Exception occurred: $e');
      emit(FeaturedBooksFAilure('Something went wrong.'));
    }
  }
}
