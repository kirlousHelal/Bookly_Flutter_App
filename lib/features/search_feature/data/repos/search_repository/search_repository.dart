import 'package:dartz/dartz.dart';

import '../../../../../core/error/Failure.dart';
import '../../../../../core/models/book_model/BookModel.dart';

abstract class SearchRepository {
  Future<Either<Failure, List<BookModel>>> fetchSearchBooks(
      {required String search});
}
