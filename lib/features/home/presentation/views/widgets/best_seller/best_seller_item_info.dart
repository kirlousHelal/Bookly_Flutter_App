import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';
import 'best_seller_rate.dart';

class BestSellerItemInfo extends StatelessWidget {
  const BestSellerItemInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Text(
              "Harry Potter And Goblet Fire",
              style: Styles.textStyle20.copyWith(
                fontFamily: xGtFontFamily,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 3),
          const Text("J.K. Rowling", style: Styles.textStyle14),
          const SizedBox(height: 3),
          const Expanded(child: BestSellerPriceRate()),
        ],
      ),
    );
  }
}
