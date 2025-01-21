import 'package:flutter/material.dart';

class ZoomErrorIcon extends StatefulWidget {
  const ZoomErrorIcon({super.key});

  @override
  _ZoomErrorIconState createState() => _ZoomErrorIconState();
}

class _ZoomErrorIconState extends State<ZoomErrorIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _zoomAnimation;

  @override
  void initState() {
    super.initState();
    initController();
    initAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _zoomAnimation,
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
    _zoomAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _controller.forward();
  }

  void initController() {
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
  }
}
