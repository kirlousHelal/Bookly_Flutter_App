import 'package:flutter/material.dart';

import 'book_price_button.dart';
import 'free_preview_button.dart';

class RowButtons extends StatelessWidget {
  const RowButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: BookPriceButton()),
          Expanded(child: FreePreviewButton()),
        ],
      ),
    );
  }
}
