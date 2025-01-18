import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BookPriceText extends StatelessWidget {
  final Color? color;
  final FontWeight fontWeight;

  const BookPriceText({
    super.key,
    this.color,
    this.fontWeight = FontWeight.bold,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "19.99 \$",
      style: Styles.textStyle20.copyWith(
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
