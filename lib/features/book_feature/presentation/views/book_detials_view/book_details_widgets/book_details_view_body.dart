import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

import 'book_details_bottom_body.dart';
import 'book_detalis_top_body.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          buildSliverPadding(widget: const BookDetailsTopBody()),
          buildSliverPadding(widget: const BookDetailsBottomBody()),
        ],
      ),
    );
  }

  SliverPadding buildSliverPadding({required Widget widget}) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: xHorizontalPadding),
      sliver: SliverToBoxAdapter(child: widget),
    );
  }
}
