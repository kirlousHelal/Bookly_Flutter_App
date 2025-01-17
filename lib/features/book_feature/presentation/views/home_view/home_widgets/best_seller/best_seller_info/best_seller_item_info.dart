import 'package:bookly_app/features/book_feature/presentation/views/home_view/home_widgets/best_seller/best_seller_info/title_best_seller.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../core/utils/styles.dart';
import '../../../../shared_widgets/book_item_rate.dart';
import '../../../../shared_widgets/book_price_text.dart';

class BestSellerItemInfo extends StatelessWidget {
  const BestSellerItemInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleBestSeller(),
          SizedBox(height: 3),
          Text("J.K. Rowling", style: Styles.textStyle14),
          SizedBox(height: 3),
          Expanded(
              child: Row(
            children: [
              BookPriceText(),
              Spacer(),
              BookItemRate(),
            ],
          )),
        ],
      ),
    );
  }
}
