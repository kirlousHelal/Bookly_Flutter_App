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
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
        endPoint: "${EndPoints.volumesEndPoint}"
            "?Filtering=free-ebooks&Sorting=newest&q=subject:Programming",
      );

      List<BookModel> listBookModel = [];
      for (var element in data["items"]) {
        listBookModel.add(BookModel.fromJson(element));
      }
      return right(listBookModel);
    } catch (e) {
      if (e is DioException) {}
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
