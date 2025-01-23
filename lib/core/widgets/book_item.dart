import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/book_feature/presentation/home/widgets/best_seller/best_seller_info/best_seller_item_info.dart';
import '../../features/book_feature/presentation/shared/widgets/feature_book_item/feature_book_item.dart';
import '../models/book_model/BookModel.dart';

class BookItem extends StatelessWidget {
  const BookItem({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.bookDetailsView,
          extra: bookModel,
        );
      },
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            FeatureBookItem(
              imageUrl: bookModel!.volumeInfo!.imageLinks!.thumbnail!,
              //AssetsData.testImage,
              borderRadius: 16,
              aspectRatio: 2.5 / 4,
            ),
            Expanded(
                // width: MediaQuery.of(context).size.width * 0.6,
                child: BestSellerItemInfo(bookModel: bookModel)),
          ],
        ),
      ),
    );
  }
}
