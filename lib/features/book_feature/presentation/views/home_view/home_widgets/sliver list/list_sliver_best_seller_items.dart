import 'package:flutter/material.dart';

import '../../../../../../../core/widgets/book_item.dart';

class ListSliverBestSellerItems extends StatelessWidget {
  const ListSliverBestSellerItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      // shrinkWrap: true,
      // padding: const EdgeInsets.all(0),
      // physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => const BookItem(),
      separatorBuilder: (context, index) => const SizedBox(height: 20),
      itemCount: 10,
    );
  }
}
