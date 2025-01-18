import 'package:flutter/material.dart';

import '../../../../../../core/utils/custom_button_styles.dart';
import '../../shared_widgets/book_price_text.dart';

class BookPriceButton extends StatelessWidget {
  const BookPriceButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: CustomButtonStyles.buildStyleButton(
        bottomLeft: 15,
        topLeft: 15,
        color: Colors.white,
        context: context,
      ),
      child: const BookPriceText(
        color: Colors.black,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}
