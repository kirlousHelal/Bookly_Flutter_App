import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/core/utils/test_styles.dart';
import 'package:bookly_app/features/search_feature/presentation/manager/search_cubit/search_cubit.dart';
import 'package:bookly_app/features/search_feature/presentation/views/search_widgets/search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'list_search_results.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: xHorizontalPadding, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SearchField(),
          buildTextSearchResults(),
          const Expanded(child: ListSearchResults()),
        ],
      ),
    );
  }

  BlocBuilder<SearchCubit, SearchState> buildTextSearchResults() {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text("Search Results",
                style: TextStyles.textStyle30.copyWith(fontSize: 25)),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
