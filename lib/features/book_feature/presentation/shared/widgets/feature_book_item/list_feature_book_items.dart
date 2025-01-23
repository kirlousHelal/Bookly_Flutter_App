import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:bookly_app/features/book_feature/presentation/home/manager/get_features_cubit/get_features_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/app_router.dart';
import '../../../../../../core/widgets/custom_error_message.dart';
import '../../../../../../core/widgets/custom_loading_indicator.dart';
import 'feature_book_item.dart';

class ListFeatureBookItems extends StatelessWidget {
  const ListFeatureBookItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var listImages = [
      AssetsData.testImage2,
      AssetsData.testImage3,
      AssetsData.testImage4,
      AssetsData.testImage,
    ];

    return BlocBuilder<GetFeaturesCubit, GetFeaturesState>(
      builder: (context, state) {
        if (state is GetFeaturesSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  GoRouter.of(context).push(
                    AppRouter.bookDetailsView,
                    extra: state.books[index],
                  );
                },
                child: FeatureBookItem(
                  imageUrl:
                      state.books[index].volumeInfo!.imageLinks!.thumbnail!,
                  // index < listImages.length
                  //     ? listImages[index]
                  //     : listImages[1],
                ),
              ),
              separatorBuilder: (context, index) => const SizedBox(width: 20),
            ),
          );
        } else if (state is GetFeaturesFailure) {
          return CustomErrorMessage(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
