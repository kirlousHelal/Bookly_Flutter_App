import 'package:bookly_app/features/book_feature/data/models/BookModel.dart';
import 'package:bookly_app/features/book_feature/presentation/book_detials/manager/init_model_cubit/init_model_cubit.dart';
import 'package:flutter/material.dart';

import '../../../../../../../constants.dart';
import '../../../../../../../core/utils/test_styles.dart';
import '../../../shared/widgets/book_item_rate.dart';
import '../../../shared/widgets/feature_book_item/feature_book_item.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsTopBody extends StatelessWidget {
  const BookDetailsTopBody({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        // const SizedBox(height: 20),
        buildFeatureBookItem(context),
        const SizedBox(height: 43),
        buildTitleText(context),
        const SizedBox(height: 6),
        buildAuthorText(context),
        const SizedBox(height: 18),
        BookItemRate(
          bookModel: bookModel,
        ),
      ],
    );
  }

  Text buildAuthorText(context) {
    var bookModel = InitModelCubit.get(context).bookModel;
    return Text(
      bookModel!.volumeInfo.authors!.first!,
      style: TextStyles.textStyle16.copyWith(
        color: Colors.grey,
        fontFamily: xGtFontFamily,
        fontStyle: FontStyle.italic,
      ),
    );
  }

  Text buildTitleText(context) {
    var bookModel = InitModelCubit.get(context).bookModel;
    return Text(
      bookModel!.volumeInfo.title!,
      style: TextStyles.textStyle20.copyWith(
        fontFamily: xGtFontFamily,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Padding buildFeatureBookItem(context) {
    var phWidth = MediaQuery.of(context).size.width;
    var bookModel = InitModelCubit.get(context).bookModel;
    var imageUrl = bookModel?.volumeInfo.imageLinks.thumbnail;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: phWidth * 0.21),
      child: FeatureBookItem(imageUrl: imageUrl!),
    );
  }
}
