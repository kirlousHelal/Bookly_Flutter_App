part of 'get_newest_cubit.dart';

@immutable
sealed class GetNewestState {}

final class GetNewestInitial extends GetNewestState {}

final class GetNewestFailure extends GetNewestState {
  final String errMessage;

  GetNewestFailure({required this.errMessage});
}

final class GetNewestLoading extends GetNewestState {}

final class GetNewestSuccess extends GetNewestState {
  final List<BookModel> books;

  GetNewestSuccess({required this.books});
}
