import 'package:flutter/material.dart';

class SlideErrorIcon extends StatefulWidget {
  const SlideErrorIcon({super.key});

  @override
  _SlideErrorIconState createState() => _SlideErrorIconState();
}

class _SlideErrorIconState extends State<SlideErrorIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    initController();
    initAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _slideAnimation,
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
    _slideAnimation =
        Tween<Offset>(begin: const Offset(1.0, 0.0), end: Offset.zero)
            .animate(_controller);
    _controller.forward();
  }

  void initController() {
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
  }
}
