import 'package:flutter/material.dart';

import '../../../../../../../core/utils/assets_data.dart';

class SearchIcon extends StatelessWidget {
  final double size;
  final VoidCallback? onPressed;

  const SearchIcon({
    super.key,
    this.size = 30,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Image.asset(
        AssetsData.search,
        width: size,
        height: size,
        color: Colors.white,
      ),
    );
  }
}
