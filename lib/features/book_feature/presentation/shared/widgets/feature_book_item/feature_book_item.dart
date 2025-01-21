import 'package:bookly_app/core/widgets/custom_error_icon/custom_error_icons.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/widgets/custom_shimmer_loading.dart';

class FeatureBookItem extends StatelessWidget {
  final String imageUrl;
  final double aspectRatio;
  final double borderRadius;

  const FeatureBookItem({
    super.key,
    required this.imageUrl,
    this.aspectRatio = 2.7 / 4,
    this.borderRadius = 20,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: AspectRatio(
        aspectRatio: aspectRatio,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.fill,
          placeholder: (context, url) => const CustomShimmerLoading(),
          errorWidget: (context, url, error) => CustomErrorIcons.zoom,
        ),
      ),
    );
  }
}
