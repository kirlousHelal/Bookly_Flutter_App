import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search_feature/presentation/views/search_widgets/search_field.dart';
import 'package:flutter/material.dart';

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
          buildPaddingText(),
          const Expanded(child: ListSearchResults()),
        ],
      ),
    );
  }

  Padding buildPaddingText() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text("Search Results",
          style: Styles.textStyle30.copyWith(fontSize: 25)),
    );
  }
}
