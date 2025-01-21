part of 'get_similar_cubit.dart';

@immutable
sealed class GetSimilarState {}

final class GetSimilarInitial extends GetSimilarState {}

final class GetSimilarLoading extends GetSimilarState {}

final class GetSimilarFailure extends GetSimilarState {
  final String errMessage;

  GetSimilarFailure({required this.errMessage});
}

final class GetSimilarSuccess extends GetSimilarState {
  final List<BookModel> books;

  GetSimilarSuccess({required this.books});
}
