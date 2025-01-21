import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'book_details_bottom_body.dart';
import 'book_detalis_top_body.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final args = GoRouter.of(context).state?.extra as Map<String, dynamic>?;
    final bookModel = args?['bookModel'];
    return SafeArea(
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          buildSliverPadding(
              widget: BookDetailsTopBody(
            bookModel: bookModel,
          )),
          buildSliverFillRemaining(widget: const BookDetailsBottomBody()),
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

  SliverFillRemaining buildSliverFillRemaining({required Widget widget}) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: xHorizontalPadding),
        child: widget,
      ),
    );
  }
}
