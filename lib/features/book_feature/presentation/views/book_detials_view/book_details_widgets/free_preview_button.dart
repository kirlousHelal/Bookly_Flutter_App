import 'package:flutter/material.dart';

import '../../../../../../core/utils/custom_button_styles.dart';
import '../../../../../../core/utils/styles.dart';

class FreePreviewButton extends StatelessWidget {
  const FreePreviewButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: CustomButtonStyles.buildStyleButton(
        topRight: 15,
        bottomRight: 15,
        color: const Color(0xffE37864),
        context: context,
      ),
      child: Text(
        "Free Preview",
        style: Styles.textStyle14.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
