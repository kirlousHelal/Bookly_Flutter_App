import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(AssetsData.logo),
          // const SizedBox(height: 100),
          // const CircularProgressIndicator(
          //   color: Colors.white,
          //   backgroundColor: xPrimaryColor,
          // )
        ],
      ),
    );
  }
}
