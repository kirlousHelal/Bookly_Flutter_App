import 'dart:ui';

import 'package:flutter/material.dart';

class BlurredErrorIcon extends StatefulWidget {
  const BlurredErrorIcon({super.key});

  @override
  _BlurredErrorIconState createState() => _BlurredErrorIconState();
}

class _BlurredErrorIconState extends State<BlurredErrorIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    initController();
    initAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: const Icon(
            Icons.error,
            color: Colors.red,
            size: 40,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void initAnimation() {
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _controller.forward();
  }

  void initController() {
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
  }
}
