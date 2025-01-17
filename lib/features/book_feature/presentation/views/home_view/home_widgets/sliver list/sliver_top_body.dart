import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

import '../custom_app_bar/custom_home_app_bar.dart';
import '../feature_book_item/list_feature_book_items.dart';
import '../head_line_text.dart';

class SliverTopBody extends StatelessWidget {
  const SliverTopBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: xHorizontalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomHomeAppBar(),
            ListFeatureBookItems(),
            HeadLineText(),
            // ListViewBestSellerItems(),
          ],
        ),
      ),
    );
  }
}
