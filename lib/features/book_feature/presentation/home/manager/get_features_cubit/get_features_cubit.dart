import 'package:bookly_app/features/book_feature/data/models/BookModel.dart';
import 'package:bookly_app/features/book_feature/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'get_features_state.dart';

class GetFeaturesCubit extends Cubit<GetFeaturesState> {
  GetFeaturesCubit({required this.homeRepo}) : super(GetFeaturesInitial());

  static GetFeaturesCubit get(context) => BlocProvider.of(context);
  final HomeRepo homeRepo;

  Future<void> fetchFeaturesBooks() async {
    emit(GetFeaturesLoading());
    var res = await homeRepo.fetchFeaturedBooks();
    res.fold(
      (failure) {
        emit(GetFeaturesFailure(errMessage: failure.errorMessage));
      },
      (books) {
        emit(GetFeaturesSuccess(books: books));
      },
    );
  }
}
