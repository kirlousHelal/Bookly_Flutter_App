import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';

abstract class LightTheme {
  static ThemeData get theme {
    return ThemeData(
      useMaterial3: true,
      // fontFamily: xGtFontFamily,
      textTheme: GoogleFonts.montserratTextTheme(Typography.whiteHelsinki),
      scaffoldBackgroundColor: Colors.grey[800],
      appBarTheme: const AppBarTheme(
        backgroundColor: xPrimaryColor,
        elevation: 0,
      ),
      colorScheme: const ColorScheme.light(),
      // brightness: Brightness.dark,
    );
  }
}
