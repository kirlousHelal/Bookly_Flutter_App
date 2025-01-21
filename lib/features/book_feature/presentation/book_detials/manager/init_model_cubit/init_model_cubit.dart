import 'package:bookly_app/features/book_feature/data/models/BookModel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'init_model_state.dart';

class InitModelCubit extends Cubit<InitModelState> {
  InitModelCubit() : super(InitModelInitial());

  static InitModelCubit get(context) => BlocProvider.of(context);

  BookModel? bookModel;

  void initModel({required BookModel bookModel}) {
    this.bookModel = bookModel;
  }
}
