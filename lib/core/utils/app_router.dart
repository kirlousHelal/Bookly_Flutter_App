import 'package:bookly_app/features/search_feature/presentation/views/search_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/book_feature/presentation/views/book_detials_view/book_details_view.dart';
import '../../features/book_feature/presentation/views/home_view/home_view.dart';
import '../../features/splash_feature/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const homeView = "/book_feature_view";
  static const bookDetailsView = "/book_details_view";
  static const searchView = "/search_view";

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: bookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: searchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
