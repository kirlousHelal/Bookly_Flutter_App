import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        // fontFamily: xGtFontFamily,
        textTheme: GoogleFonts.montserratTextTheme(Typography.whiteHelsinki),
        scaffoldBackgroundColor: xPrimaryColor,
        colorScheme: const ColorScheme.dark(),
        // brightness: Brightness.dark,
      ),
      home: const SplashView(),
    );
  }
}
