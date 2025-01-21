import 'package:flutter/material.dart';

class ShakingErrorIcon extends StatefulWidget {
  const ShakingErrorIcon({super.key});

  @override
  _ShakingErrorIconState createState() => _ShakingErrorIconState();
}

class _ShakingErrorIconState extends State<ShakingErrorIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    initController();
    initAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: const Icon(
        Icons.error,
        color: Colors.red,
        size: 40,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void initAnimation() {
    _animation = Tween<Offset>(begin: Offset.zero, end: const Offset(0.1, 0))
        .chain(CurveTween(curve: Curves.easeInOutCubic))
        .animate(_controller);
    _controller.repeat();
  }

  void initController() {
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
  }
}
