import 'package:flutter/material.dart';

abstract class CustomButtonStyles {
  static ButtonStyle buildStyleButton({
    double topLeft = 0,
    double bottomLeft = 0,
    double topRight = 0,
    double bottomRight = 0,
    required BuildContext context,
    Color? color,
  }) {
    // var phWidth = MediaQuery.of(context).size.width;
    var phHeight = MediaQuery.of(context).size.height;
    return ElevatedButton.styleFrom(
      backgroundColor: color,
      shape: buildRoundedRectangleBorder(
          topLeft, bottomLeft, topRight, bottomRight),
      fixedSize: Size.fromHeight(phHeight * 0.06),
      // fixedSize: const Size(140, 50),
    );
  }

  static RoundedRectangleBorder buildRoundedRectangleBorder(
      double topLeft, double bottomLeft, double topRight, double bottomRight) {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(topLeft),
        bottomLeft: Radius.circular(bottomLeft),
        topRight: Radius.circular(topRight),
        bottomRight: Radius.circular(bottomRight),
      ),
    );
  }
}
