import 'package:bookly_app/features/search_feature/presentation/views/search_widgets/search_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Search", style: Styles.textStyle30)),
      body: const SearchViewBody(),
    );
  }
}
