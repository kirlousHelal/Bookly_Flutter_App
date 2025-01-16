import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar/search_icon.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/assets_data.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 0),
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
