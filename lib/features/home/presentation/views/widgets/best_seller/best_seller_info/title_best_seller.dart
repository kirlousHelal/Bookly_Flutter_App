import 'package:flutter/material.dart';

import '../../../../../../../constants.dart';
import '../../../../../../../core/utils/styles.dart';

class TitleBestSeller extends StatelessWidget {
  const TitleBestSeller({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Text(
        "Harry Potter And Goblet Fire",
        style: Styles.textStyle20.copyWith(
          fontFamily: xGtFontFamily,
        ),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
