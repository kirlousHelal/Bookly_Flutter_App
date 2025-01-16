import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../core/utils/assets_data.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: false
          ? const Icon(FontAwesomeIcons.magnifyingGlass)
          : Image.asset(
              AssetsData.search,
              width: 30,
              height: 30,
              color: Colors.white,
            ),
    );
  }
}
