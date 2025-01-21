import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/book_feature/presentation/book_detials/manager/get_similar_cubit/get_similar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/widgets/custom_error_message.dart';
import '../../../shared/widgets/feature_book_item/feature_book_item.dart';

class ListSimilarBookItems extends StatelessWidget {
  const ListSimilarBookItems({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetSimilarCubit, GetSimilarState>(
      builder: (context, state) {
        if (state is GetSimilarSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) => FeatureBookItem(
                imageUrl: state.books[index].volumeInfo!.imageLinks!.thumbnail!,
                // index < listImages.length
                //     ? listImages[index]
                //     : listImages[1],
              ),
              separatorBuilder: (context, index) => const SizedBox(width: 20),
            ),
          );
        } else if (state is GetSimilarFailure) {
          return CustomErrorMessage(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
