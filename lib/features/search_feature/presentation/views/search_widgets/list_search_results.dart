import 'package:flutter/material.dart';

class ListSearchResults extends StatelessWidget {
  const ListSearchResults({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      // shrinkWrap: true,
      // padding: const EdgeInsets.all(0),
      // physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => const SizedBox(),
      // BookItem(
      //     bookModel:
      // ),
      separatorBuilder: (context, index) => const SizedBox(height: 20),
      itemCount: 10,
    );
  }
}
