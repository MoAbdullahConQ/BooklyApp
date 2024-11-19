import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/search/data/repos/search_repo.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());

  final SearchRepo searchRepo;

  Future<void> feachResultSearch({required String bookName}) async {
    emit(SearchLoading());
    var result = await searchRepo.feachResultSearch(bookName: bookName);
    result.fold((failures) {
      emit(SearchFailure(failures.errMessage));
    }, (books) {
      emit(SearchSuccess(books));
    });
  }
}
