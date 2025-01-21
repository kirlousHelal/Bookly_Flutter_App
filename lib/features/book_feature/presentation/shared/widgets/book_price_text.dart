import 'package:bookly_app/features/book_feature/data/models/BookModel.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/test_styles.dart';

class BookPriceText extends StatelessWidget {
  final Color? color;
  final FontWeight fontWeight;

  final BookModel bookModel;

  const BookPriceText({
    super.key,
    this.color,
    this.fontWeight = FontWeight.bold,
    required this.bookModel,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      bookModel.saleInfo!.isEbook
          ? "${bookModel.saleInfo.listPrice?.amount.toString()} \$"
          : "Free",
      // "19.99 \$",
      style: TextStyles.textStyle20.copyWith(
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
