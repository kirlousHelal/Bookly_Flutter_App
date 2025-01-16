import 'package:bookly_app/features/home/presentation/views/widgets/sliver%20list/sliver_bottom_body.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/sliver%20list/sliver_top_body.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverTopBody(),
        SliverBottomBody(),
      ],
    );
  }
}
