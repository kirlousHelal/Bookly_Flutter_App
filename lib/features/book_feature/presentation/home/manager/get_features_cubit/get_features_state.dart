part of 'get_features_cubit.dart';

@immutable
sealed class GetFeaturesState {}

final class GetFeaturesInitial extends GetFeaturesState {}

final class GetFeaturesLoading extends GetFeaturesState {}

final class GetFeaturesFailure extends GetFeaturesState {
  final String errMessage;

  GetFeaturesFailure({required this.errMessage});
}

final class GetFeaturesSuccess extends GetFeaturesState {
  final List<BookModel> books;

  GetFeaturesSuccess({required this.books});
}
