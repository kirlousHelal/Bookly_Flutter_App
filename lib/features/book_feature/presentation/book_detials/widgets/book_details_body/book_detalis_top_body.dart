import 'package:bookly_app/features/book_feature/presentation/book_detials/manager/init_model_cubit/init_model_cubit.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/utils/test_styles.dart';
import '../../../../../../core/models/book_model/BookModel.dart';
import '../../../../../../core/utils/constants.dart';
import '../../../shared/widgets/book_item_rate.dart';
import '../../../shared/widgets/feature_book_item/feature_book_item.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsTopBody extends StatelessWidget {
  const BookDetailsTopBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var bookModel = InitModelCubit.get(context).bookModel!;
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        // const SizedBox(height: 20),
        buildFeatureBookItem(bookModel: bookModel, context: context),
        const SizedBox(height: 43),
        buildTitleText(bookModel: bookModel),
        const SizedBox(height: 6),
        buildAuthorText(bookModel: bookModel),
        const SizedBox(height: 18),
        BookItemRate(
          bookModel: bookModel,
        ),
      ],
    );
  }

  Text buildAuthorText({required BookModel bookModel}) {
    return Text(
      bookModel!.volumeInfo?.authors?.first ?? "unknown author",
      style: TextStyles.textStyle16.copyWith(
        color: Colors.grey,
        fontFamily: xGtFontFamily,
        fontStyle: FontStyle.italic,
      ),
    );
  }

  Text buildTitleText({required BookModel bookModel}) {
    return Text(
      bookModel!.volumeInfo.title!,
      style: TextStyles.textStyle20.copyWith(
        fontFamily: xGtFontFamily,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }

  Padding buildFeatureBookItem(
      {required context, required BookModel bookModel}) {
    var phWidth = MediaQuery.of(context).size.width;
    var imageUrl = bookModel?.volumeInfo.imageLinks.thumbnail;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: phWidth * 0.21),
      child: FeatureBookItem(imageUrl: imageUrl!),
    );
  }
}
