import 'package:bookly_app/features/book_feature/data/models/BookModel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/test_styles.dart';

class BookItemRate extends StatelessWidget {
  const BookItemRate({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 15,
        ),
        const SizedBox(width: 6.3),
        Text(
          "${bookModel.volumeInfo?.averageRating ?? 0}",
          // "4.8",
          style: TextStyles.textStyle16,
        ),
        const SizedBox(width: 5),
        Text(
          "(${bookModel.volumeInfo?.ratingsCount ?? 0})",
          // "(2390)",
          style: TextStyles.textStyle14,
        )
      ],
    );
  }
}
