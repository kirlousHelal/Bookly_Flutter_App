import 'package:bookly_app/features/search_feature/presentation/manager/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/search_icon.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
      decoration: buildInputDecoration(),
      onChanged: (value) {
        SearchCubit.get(context).fetchSearchBooks(search: value);
      },
    );
  }

  InputDecoration buildInputDecoration() {
    return InputDecoration(
      contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      hintText: "search for a book...",
      label: const Text("Search"),
      suffixIcon: SearchIcon(
        size: 20,
        onPressed: () {},
      ),
      enabledBorder: buildOutlineInputBorder(),
      focusedBorder: buildOutlineInputBorder(),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(color: Colors.white),
    );
  }
}
