import 'package:bookly_app/core/error/Failure.dart';
import 'package:bookly_app/core/models/book_model/BookModel.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../../core/utils/endpoints.dart';
import 'search_repository.dart';

class SearchRepositoryImpl implements SearchRepository {
  final ApiService apiService;

  SearchRepositoryImpl({required this.apiService});

  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchBooks(
      {required String search}) async {
    try {
      var data = await apiService.get(
        endPoint: "${EndPoints.volumesEndPoint}"
            "?q=$search",
      );

      List<BookModel> books = [];
      for (var element in data["items"]) {
        books.add(BookModel.fromJson(element));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(dioException: e));
      }
      return left(Failure(errorMessage: e.toString()));
    }
  }
}
