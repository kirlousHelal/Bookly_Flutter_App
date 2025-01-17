import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../../../core/utils/styles.dart';

class BestSellerPriceRate extends StatelessWidget {
  const BestSellerPriceRate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "19.99 \$",
          style: Styles.textStyle20.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 15,
        ),
        const SizedBox(width: 6.3),
        const Text(
          "4.8",
          style: Styles.textStyle16,
        ),
        const SizedBox(width: 5),
        const Text(
          "(2390)",
          style: Styles.textStyle14,
        )
      ],
    );
  }
}
