import 'package:go_router/go_router.dart';
import 'package:my_books_app/features/home/presentation/views/home_view.dart';
import 'package:my_books_app/features/splash/presentation/views/splash_view.dart';

abstract class AppRoutes {
  static const home = '/homeView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: home,
        builder: (context, state) => HomeView(),
      ),
    ],
  );
}
