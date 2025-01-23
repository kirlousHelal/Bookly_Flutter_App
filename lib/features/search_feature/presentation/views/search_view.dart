import 'package:bookly_app/features/search_feature/data/repos/search_repository/search_repository_impl.dart';
import 'package:bookly_app/features/search_feature/presentation/manager/search_cubit/search_cubit.dart';
import 'package:bookly_app/features/search_feature/presentation/views/search_widgets/search_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/service_locator.dart';
import '../../../../core/utils/test_styles.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Search", style: TextStyles.textStyle30)),
      body: BlocProvider(
        create: (context) =>
            SearchCubit(searchRepository: getIt.get<SearchRepositoryImpl>()),
        child: const SearchViewBody(),
      ),
    );
  }
}
