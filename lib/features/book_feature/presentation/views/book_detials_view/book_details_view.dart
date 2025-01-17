import 'package:flutter/material.dart';

import 'book_details_widgets/book_details_view_body.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const BookDetailsViewBody(),
    );
  }
}