import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/feature_book_item.dart';
import 'package:flutter/material.dart';

import 'head_line_text.dart';
import 'list_feature_book_items.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 30, left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          ListFeatureBookItems(),
          HeadLineText(),
          SizedBox(
            height: 120,
            child: Row(
              children: [
                FeatureBookItem(
                  image: AssetsData.testImage,
                  borderRadius: 16,
                  aspectRatio: 2.5 / 4,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
