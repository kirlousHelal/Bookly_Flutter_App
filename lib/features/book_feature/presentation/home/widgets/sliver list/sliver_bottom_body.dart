import 'package:flutter/material.dart';

import '../../../../../../../constants.dart';
import 'list_sliver_best_seller_items.dart';

class SliverBottomBody extends StatelessWidget {
  const SliverBottomBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: xHorizontalPadding),
      sliver: ListSliverBestSellerItems(),
    );
  }
}
