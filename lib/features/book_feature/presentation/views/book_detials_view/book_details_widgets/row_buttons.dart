import 'package:flutter/material.dart';

import 'book_price_button.dart';
import 'free_preview_button.dart';

class RowButtons extends StatelessWidget {
  const RowButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BookPriceButton(),
        FreePreviewButton(),
      ],
    );
  }
}
