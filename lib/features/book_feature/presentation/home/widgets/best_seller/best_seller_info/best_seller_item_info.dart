import 'package:bookly_app/features/book_feature/presentation/home/widgets/best_seller/best_seller_info/title_best_seller.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../core/utils/test_styles.dart';
import '../../../../../../../core/models/book_model/BookModel.dart';
import '../../../../shared/widgets/book_item_rate.dart';
import '../../../../shared/widgets/book_price_text.dart';

class BestSellerItemInfo extends StatelessWidget {
  const BestSellerItemInfo({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleBestSeller(
            title: bookModel!.volumeInfo!.title!,
          ),
          const SizedBox(height: 3),
          Text(
            "${bookModel.volumeInfo?.authors?.first}",
            style: TextStyles.textStyle14,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 3),
          Expanded(
            child: Row(
              children: [
                BookPriceText(bookModel: bookModel),
                const Spacer(),
                BookItemRate(
                  bookModel: bookModel,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
