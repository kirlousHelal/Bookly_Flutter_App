import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'best_seller/best_seller_item.dart';
import 'feature_book_item/list_feature_book_items.dart';
import 'head_line_text.dart';

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
          BestSellerItem(),
        ],
      ),
    );
  }
}
