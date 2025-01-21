import 'package:bookly_app/features/book_feature/data/models/BookModel.dart';
import 'package:bookly_app/features/book_feature/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'get_similar_state.dart';

class GetSimilarCubit extends Cubit<GetSimilarState> {
  GetSimilarCubit({required this.homeRepo}) : super(GetSimilarInitial());

  static GetSimilarCubit get(context) => BlocProvider.of(context);
  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async {
    var res = await homeRepo.fetchSimilarBooks(category: category);
    res.fold(
      (failure) {
        emit(GetSimilarFailure(errMessage: failure.errorMessage));
      },
      (books) {
        emit(GetSimilarSuccess(books: books));
      },
    );
  }
}
