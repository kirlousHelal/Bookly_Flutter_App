import 'package:flutter/material.dart';

import '../../../../../../core/utils/test_styles.dart';

class HeadLineText extends StatelessWidget {
  const HeadLineText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 60, bottom: 20),
      child: Text(
        "Best Seller",
        style: TextStyles.textStyle20,
      ),
    );
  }
}
