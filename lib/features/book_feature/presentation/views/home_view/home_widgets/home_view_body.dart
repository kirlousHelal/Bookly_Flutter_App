import 'package:bookly_app/features/book_feature/presentation/views/home_view/home_widgets/sliver%20list/sliver_bottom_body.dart';
import 'package:bookly_app/features/book_feature/presentation/views/home_view/home_widgets/sliver%20list/sliver_top_body.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverTopBody(),
          SliverBottomBody(),
        ],
      ),
    );
  }
}
