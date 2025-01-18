import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/assets_data.dart';
import '../../../../../../core/utils/styles.dart';
import '../../shared_widgets/book_item_rate.dart';
import '../../shared_widgets/feature_book_item/feature_book_item.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsTopBody extends StatelessWidget {
  const BookDetailsTopBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        const SizedBox(height: 20),
        buildFeatureBookItem(context),
        const SizedBox(height: 43),
        buildTitleText(),
        const SizedBox(height: 6),
        buildAuthorText(),
        const SizedBox(height: 18),
        const BookItemRate(),
      ],
    );
  }

  Text buildAuthorText() {
    return Text(
      "Rudyard kipling",
      style: Styles.textStyle16.copyWith(
        color: Colors.grey,
        fontFamily: xGtFontFamily,
        fontStyle: FontStyle.italic,
      ),
    );
  }

  Text buildTitleText() {
    return Text(
      "The Jungle Book",
      style: Styles.textStyle20.copyWith(
        fontFamily: xGtFontFamily,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Padding buildFeatureBookItem(context) {
    var phWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: phWidth * 0.15),
      child: const FeatureBookItem(image: AssetsData.testImage2),
    );
  }
}
