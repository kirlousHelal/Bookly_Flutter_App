import 'package:flutter/cupertino.dart';

import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 10, right: 15, left: 15),
      child: Column(
        children: [
          CustomAppBar(),
        ],
      ),
    );
  }
}
