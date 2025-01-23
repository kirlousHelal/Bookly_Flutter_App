import 'package:bookly_app/core/models/book_model/BookModel.dart';
import 'package:bookly_app/features/search_feature/data/repos/search_repository/search_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit({required this.searchRepository}) : super(SearchInitial());

  static SearchCubit get(context) => BlocProvider.of(context);

  final SearchRepository searchRepository;

  Future<void> fetchSearchBooks({required String search}) async {
    if (search.isNotEmpty) {
      var res = await searchRepository.fetchSearchBooks(search: search);
      res.fold(
        (failure) {
          emit(SearchFailure(errMessage: failure.errorMessage));
        },
        (books) {
          emit(SearchSuccess(books: books));
        },
      );
    } else {
      emit(SearchInitial());
    }
  }
}
