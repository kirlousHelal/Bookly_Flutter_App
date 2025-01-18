import 'package:flutter/material.dart';

class FeatureBookItem extends StatelessWidget {
  final String image;
  final double aspectRatio;
  final double borderRadius;

  const FeatureBookItem({
    super.key,
    required this.image,
    this.aspectRatio = 2.7 / 4,
    this.borderRadius = 20,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Container(
        // padding: EdgeInsets.zero,
        // margin: EdgeInsets.zero,
        decoration: BoxDecoration(
          // color: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
