import 'package:flutter/material.dart';

class FadeErrorIcon extends StatefulWidget {
  const FadeErrorIcon({super.key});

  @override
  _FadeErrorIconState createState() => _FadeErrorIconState();
}

class _FadeErrorIconState extends State<FadeErrorIcon>
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
      child: const Icon(
        Icons.error,
        color: Colors.red,
        size: 40,
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
