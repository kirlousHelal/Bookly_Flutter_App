import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../../../../core/models/book_model/BookModel.dart';

part 'init_model_state.dart';

class InitModelCubit extends Cubit<InitModelState> {
  InitModelCubit() : super(InitModelInitial());

  static InitModelCubit get(context) => BlocProvider.of(context);

  BookModel? bookModel;

  void initModel({required BookModel bookModel}) {
    this.bookModel = bookModel;
  }
}
