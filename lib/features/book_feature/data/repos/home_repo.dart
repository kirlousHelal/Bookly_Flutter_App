import 'package:bookly_app/features/book_feature/data/models/BookModel.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/Failure.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();

  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}
