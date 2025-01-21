import 'package:flutter/material.dart';

import '../../../../../../../../constants.dart';
import '../../../../../../../../core/utils/test_styles.dart';

class TitleBestSeller extends StatelessWidget {
  const TitleBestSeller({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Text(
        title,
        //"Harry Potter And Goblet Fire",
        style: TextStyles.textStyle20.copyWith(
          fontFamily: xGtFontFamily,
        ),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
