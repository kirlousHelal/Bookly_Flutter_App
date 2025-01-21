import 'package:bookly_app/core/Themes/dark_theme.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/book_feature/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/book_feature/presentation/home/manager/get_features_cubit/get_features_cubit.dart';
import 'package:bookly_app/features/book_feature/presentation/home/manager/get_newest_cubit/get_newest_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc_observer.dart';
import 'core/Themes/light_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();

  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widgets is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              GetNewestCubit(homeRepo: getIt.get<HomeRepoImpl>())
                ..fetchNewestBooks(),
        ),
        BlocProvider(
          create: (context) =>
              GetFeaturesCubit(homeRepo: getIt.get<HomeRepoImpl>())
                ..fetchFeaturesBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: LightTheme.theme,
        darkTheme: DarkTheme.theme,
        themeMode: ThemeMode.dark,
      ),
    );
  }
}
