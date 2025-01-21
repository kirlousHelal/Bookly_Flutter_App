import 'package:bookly_app/core/widgets/custom_error_message.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/book_feature/presentation/home/manager/get_newest_cubit/get_newest_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/widgets/book_item.dart';

class ListSliverBestSellerItems extends StatelessWidget {
  const ListSliverBestSellerItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetNewestCubit, GetNewestState>(
      builder: (context, state) {
        if (state is GetNewestSuccess) {
          return SliverList.separated(
            // shrinkWrap: true,
            // padding: const EdgeInsets.all(0),
            // physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) =>
                BookItem(bookModel: state.books[index]),
            separatorBuilder: (context, index) => const SizedBox(height: 20),
            itemCount: state.books.length,
          );
        } else if (state is GetNewestFailure) {
          return SliverToBoxAdapter(
            child: CustomErrorMessage(errMessage: state.errMessage),
          );
        } else {
          return const SliverToBoxAdapter(
            child: CustomLoadingIndicator(),
          );
        }
      },
    );
  }
}
