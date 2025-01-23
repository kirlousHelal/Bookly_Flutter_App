import 'package:bookly_app/core/widgets/book_item.dart';
import 'package:bookly_app/core/widgets/custom_error_message.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/search_feature/presentation/manager/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListSearchResults extends StatelessWidget {
  const ListSearchResults({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          return ListView.separated(
            itemBuilder: (context, index) => BookItem(
              bookModel: state.books[index],
            ),
            separatorBuilder: (context, index) => const SizedBox(height: 20),
            itemCount: 10,
          );
        } else if (state is SearchFailure) {
          return CustomErrorMessage(errMessage: state.errMessage);
        } else if (state is SearchLoading) {
          return const CustomLoadingIndicator();
        } else {
          return const Center(child: Text("Search for a book"));
        }
      },
    );
  }
}
