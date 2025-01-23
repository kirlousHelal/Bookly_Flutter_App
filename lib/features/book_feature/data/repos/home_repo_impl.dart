import 'package:bookly_app/core/error/Failure.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/endpoints.dart';
import 'package:bookly_app/features/book_feature/data/models/BookModel.dart';
import 'package:bookly_app/features/book_feature/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
        endPoint: "${EndPoints.volumesEndPoint}"
            "?Filtering=free-ebooks&q=subject:Programming",
      );

      List<BookModel> listBookModel = [];
      for (var element in data["items"]) {
        listBookModel.add(BookModel.fromJson(element));
      }
      return right(listBookModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(dioException: e));
      }
      return left(Failure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
        endPoint: "${EndPoints.volumesEndPoint}"
            "?Filtering=free-ebooks&Sorting=newest&q=subject:Computer Science",
      );

      List<BookModel> listBookModel = [];
      for (var element in data["items"]) {
        listBookModel.add(BookModel.fromJson(element));
      }
      return right(listBookModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(dioException: e));
      }
      return left(Failure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category}) async {
    try {
      var data = await apiService.get(
        endPoint: "${EndPoints.volumesEndPoint}"
            "?Filtering=free-ebooks&Sorting=newest&q=$category",
      );
      List<BookModel> books = [];
      for (var element in data["items"]) {
        try {
          books.add(BookModel.fromJson(element));
        } catch (e) {
          books.add(BookModel.fromJson(element));
        }
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure(errorMessage: e.toString()));
      }
      return left(Failure(errorMessage: e.toString()));
    }
  }
}
