import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/book_feature/presentation/views/home_view/home_widgets/best_seller/best_seller_info/best_seller_item_info.dart';
import '../../features/book_feature/presentation/views/shared_widgets/feature_book_item/feature_book_item.dart';
import '../utils/assets_data.dart';

class BookItem extends StatelessWidget {
  const BookItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(AppRouter.bookDetailsView);
      },
      child: const SizedBox(
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
      ),
    );
  }
}
