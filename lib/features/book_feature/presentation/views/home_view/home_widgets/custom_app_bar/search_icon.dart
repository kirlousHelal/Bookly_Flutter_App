import 'package:flutter/material.dart';

import '../../../../../../../core/utils/assets_data.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Image.asset(
        AssetsData.search,
        width: 30,
        height: 30,
        color: Colors.white,
      ),
    );
  }
}
