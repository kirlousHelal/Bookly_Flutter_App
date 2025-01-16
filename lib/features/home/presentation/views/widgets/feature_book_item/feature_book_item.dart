import 'package:flutter/material.dart';

class FeatureBookItem extends StatelessWidget {
  final String image;
  final double? aspectRatio;
  final double? borderRadius;

  const FeatureBookItem({
    super.key,
    required this.image,
    this.aspectRatio,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio ?? 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 20)),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
