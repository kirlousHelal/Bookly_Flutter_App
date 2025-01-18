import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/features/splash_feature/presentation/views/splash_widgets/splash_view_body_column.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late Animation<Offset> _slidingAnimation;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _initAnimation();
    _navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SplashViewBodyColumn(slidingAnimation: _slidingAnimation),
    );
  }

  void _initAnimation() {
    _animationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 2),
      end: Offset.zero,
    ).animate(_animationController);

    _animationController.forward();
  }

  void _navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () => mounted ? context.go(AppRouter.homeView) : null,
    );
  }
}
