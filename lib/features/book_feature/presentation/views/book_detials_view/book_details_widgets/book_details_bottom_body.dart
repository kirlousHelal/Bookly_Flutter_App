import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/book_feature/presentation/views/book_detials_view/book_details_widgets/row_buttons.dart';
import 'package:bookly_app/features/book_feature/presentation/views/shared_widgets/feature_book_item/list_feature_book_items.dart';
import 'package:flutter/material.dart';

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
          const SizedBox(height: 50),
          Text("You Can also like",
              style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold)),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: SizedBox(height: 120, child: ListFeatureBookItems()),
          ),
        ],
      ),
    );
  }
}
