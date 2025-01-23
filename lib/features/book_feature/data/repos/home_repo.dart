import 'package:dartz/dartz.dart';

import '../../../../core/error/Failure.dart';
import '../../../../core/models/book_model/BookModel.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();

  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();

  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({
    required String category,
  });
}
