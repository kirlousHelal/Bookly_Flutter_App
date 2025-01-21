import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../../data/models/BookModel.dart';
import '../../../../data/repos/home_repo.dart';

part 'get_newest_state.dart';

class GetNewestCubit extends Cubit<GetNewestState> {
  GetNewestCubit({required this.homeRepo}) : super(GetNewestInitial());

  static GetNewestCubit get(context) => BlocProvider.of(context);
  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(GetNewestLoading());
    var res = await homeRepo.fetchNewestBooks();
    res.fold(
      (failure) {
        emit(GetNewestFailure(errMessage: failure.errorMessage));
      },
      (books) {
        emit(GetNewestSuccess(books: books));
      },
    );
  }
}
