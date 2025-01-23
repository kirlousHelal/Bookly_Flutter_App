import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/book_feature/data/models/BookModel.dart';
import 'package:bookly_app/features/book_feature/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/book_feature/presentation/book_detials/manager/get_similar_cubit/get_similar_cubit.dart';
import 'package:bookly_app/features/book_feature/presentation/book_detials/manager/init_model_cubit/init_model_cubit.dart';
import 'package:bookly_app/features/book_feature/presentation/book_detials/widgets/book_details_body/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final bookModel = GoRouter.of(context).state?.extra as BookModel;
    final String? category = bookModel.volumeInfo.categories?.first;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              GetSimilarCubit(homeRepo: getIt.get<HomeRepoImpl>())
                ..fetchSimilarBooks(category: category ?? "all"),
        ),
        BlocProvider(
          create: (context) =>
              InitModelCubit()..initModel(bookModel: bookModel),
        )
      ],
      child: const Scaffold(
        body: BookDetailsViewBody(),
      ),
    );
  }
}
