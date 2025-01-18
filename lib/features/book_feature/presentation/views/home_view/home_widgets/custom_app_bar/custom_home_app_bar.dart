import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../../core/utils/assets_data.dart';
import '../../../../../../../core/widgets/search_icon.dart';

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
          SearchIcon(
              onPressed: () => GoRouter.of(context).push(AppRouter.searchView)),
        ],
      ),
    );
  }
}
