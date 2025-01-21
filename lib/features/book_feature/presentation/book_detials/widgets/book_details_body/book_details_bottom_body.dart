import 'package:bookly_app/core/utils/test_styles.dart';
import 'package:flutter/material.dart';

import '../buttons/row_buttons.dart';
import 'list_similar_book_items.dart';

class BookDetailsBottomBody extends StatelessWidget {
  const BookDetailsBottomBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 38),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const RowButtons(),
          const Expanded(child: SizedBox(height: 50)),
          // const Spacer(),
          Text("You Can also like",
              style:
                  TextStyles.textStyle20.copyWith(fontWeight: FontWeight.bold)),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: SizedBox(height: 120, child: ListSimilarBookItems()),
          ),
        ],
      ),
    );
  }
}
