import 'package:go_router/go_router.dart';

import '../../features/book_feature/presentation/views/book_detials_view/book_details_view.dart';
import '../../features/book_feature/presentation/views/home_view/home_view.dart';
import '../../features/splash_feature/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const home = "/book_feature";
  static const bookDetails = "/book_details";

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: home,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: bookDetails,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
