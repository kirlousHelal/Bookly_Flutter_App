import 'package:flutter/material.dart';

import '../../../../../../core/utils/assets_data.dart';
import '../feature_book_item/feature_book_item.dart';
import 'best_seller_item_info.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 120,
      child: Row(
        children: [
          FeatureBookItem(
            image: AssetsData.testImage,
            borderRadius: 16,
            aspectRatio: 2.5 / 4,
          ),
          Expanded(
              // width: MediaQuery.of(context).size.width * 0.6,
              child: BestSellerItemInfo()),
        ],
      ),
    );
  }
}
