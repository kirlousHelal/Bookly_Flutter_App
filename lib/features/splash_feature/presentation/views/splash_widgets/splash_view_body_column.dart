import 'package:bookly_app/features/splash_feature/presentation/views/splash_widgets/slide_transition_text.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_data.dart';

class SplashViewBodyColumn extends StatelessWidget {
  const SplashViewBodyColumn({
    super.key,
    required Animation<Offset> slidingAnimation,
  }) : _slidingAnimation = slidingAnimation;

  final Animation<Offset> _slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(height: 25),
        SlideTransitionText(slidingAnimation: _slidingAnimation),
      ],
    );
  }
}
