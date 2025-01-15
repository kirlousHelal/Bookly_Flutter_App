import 'package:bookly_app/features/home/presentation/views/widgets/search_icon.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_data.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          AssetsData.logo,
          height: 150,
          width: 150,
        ),
        const Spacer(),
        const SearchIcon(),
      ],
    );
  }
}
