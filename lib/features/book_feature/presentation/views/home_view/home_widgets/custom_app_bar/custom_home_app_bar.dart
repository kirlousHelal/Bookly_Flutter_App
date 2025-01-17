import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/book_feature/presentation/views/home_view/home_widgets/custom_app_bar/search_icon.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/utils/assets_data.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: xTopPadding, bottom: 0),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 80,
            width: 100,
          ),
          const Spacer(),
          const SearchIcon(),
        ],
      ),
    );
  }
}
