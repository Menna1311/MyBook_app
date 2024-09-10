import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_books_app/features/home/data/models/book_model/book_model.dart';
import 'package:my_books_app/features/home/data/models/book_model/repos/home_repo.dart';

part 'newestbooks_state.dart';

class NewestbooksCubit extends Cubit<NewestbooksState> {
  NewestbooksCubit(this.homeRepo) : super(NewestbooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchNewstBooks() async {
    emit(NewestbooksLoading());
    var result = await homeRepo.fetchNewsetBooks();
    result.fold((failure) => emit(NewestbooksFailure(failure.errMessage)),
        (books) => emit(NewestbooksSuccess(books)));
  }
}
