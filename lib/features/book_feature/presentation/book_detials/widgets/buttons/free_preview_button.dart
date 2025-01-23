import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../../core/utils/custom_button_styles.dart';
import '../../../../../../../core/utils/test_styles.dart';
import '../../manager/init_model_cubit/init_model_cubit.dart';

class FreePreviewButton extends StatelessWidget {
  const FreePreviewButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var bookModel = InitModelCubit.get(context).bookModel;
    var url = bookModel?.volumeInfo.previewLink;
    return ElevatedButton(
      onPressed: () async {
        final Uri uri = Uri.parse(url!);
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri);
        }
      },
      style: CustomButtonStyles.buildStyleButton(
        topRight: 15,
        bottomRight: 15,
        color: const Color(0xffE37864),
        context: context,
      ),
      child: Text(
        "Free Preview",
        style: TextStyles.textStyle14.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
