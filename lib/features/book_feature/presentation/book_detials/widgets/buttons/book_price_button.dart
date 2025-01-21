import 'package:flutter/material.dart';

import '../../../../../../../core/utils/custom_button_styles.dart';
import '../../../shared/widgets/book_price_text.dart';
import '../../manager/init_model_cubit/init_model_cubit.dart';

class BookPriceButton extends StatelessWidget {
  const BookPriceButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var bookModel = InitModelCubit.get(context).bookModel;
    return ElevatedButton(
      onPressed: () {},
      style: CustomButtonStyles.buildStyleButton(
        bottomLeft: 15,
        topLeft: 15,
        color: Colors.white,
        context: context,
      ),
      child: BookPriceText(
        color: Colors.black,
        fontWeight: FontWeight.w900,
        bookModel: bookModel!,
      ),
    );
  }
}
