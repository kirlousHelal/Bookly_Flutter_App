import 'package:bookly_app/core/Themes/dark_theme.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';

import 'core/Themes/light_theme.dart';

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
      theme: LightTheme.theme,
      darkTheme: DarkTheme.theme,
      themeMode: ThemeMode.dark,
    );
  }
}
