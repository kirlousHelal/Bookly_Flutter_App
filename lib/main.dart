import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: xGtFontFamily,
        // textTheme: GoogleFonts.montserratTextTheme(Typography.whiteHelsinki),
        scaffoldBackgroundColor: xPrimaryColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: xPrimaryColor,
          elevation: 0,
        ),
        colorScheme: const ColorScheme.dark(),
        // brightness: Brightness.dark,
      ),
      // book_feature: const SplashView(),
    );
  }
}
