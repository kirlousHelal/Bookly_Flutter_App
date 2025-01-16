import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

import 'feature_book_item.dart';

class ListFeatureBookItems extends StatelessWidget {
  const ListFeatureBookItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var listImages = [
      AssetsData.testImage2,
      AssetsData.testImage3,
      AssetsData.testImage4,
      AssetsData.testImage,
    ];

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: listImages.length ?? 10,
        itemBuilder: (context, index) => FeatureBookItem(
          image: index < listImages.length ? listImages[index] : listImages[1],
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 20),
      ),
    );
  }
}
