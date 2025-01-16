import 'package:bookly_app/features/home/presentation/views/widgets/best_seller/best_seller_info/title_best_seller.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/utils/styles.dart';
import 'best_seller_rate.dart';

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
          Expanded(child: BestSellerPriceRate()),
        ],
      ),
    );
  }
}
