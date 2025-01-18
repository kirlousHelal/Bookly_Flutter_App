import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookItemRate extends StatelessWidget {
  const BookItemRate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 15,
        ),
        SizedBox(width: 6.3),
        Text(
          "4.8",
          style: Styles.textStyle16,
        ),
        SizedBox(width: 5),
        Text(
          "(2390)",
          style: Styles.textStyle14,
        )
      ],
    );
  }
}
