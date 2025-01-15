import 'package:flutter/material.dart';

class SlideTransitionText extends StatelessWidget {
  const SlideTransitionText({
    super.key,
    required Animation<Offset> slidingAnimation,
  }) : _slidingAnimation = slidingAnimation;

  final Animation<Offset> _slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _slidingAnimation,
      child: const Text(
        "Read Free Books...",
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
