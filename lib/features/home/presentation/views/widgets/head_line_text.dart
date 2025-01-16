import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class HeadLineText extends StatelessWidget {
  const HeadLineText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 60),
      child: Text(
        "Best Seller",
        style: Styles.titleMedium,
      ),
    );
  }
}
