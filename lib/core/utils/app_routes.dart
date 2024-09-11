import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_books_app/core/utils/service_locator.dart';
import 'package:my_books_app/features/home/data/models/book_model/book_model.dart';
import 'package:my_books_app/features/home/data/models/book_model/repos/home_repo_impl.dart';
import 'package:my_books_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:my_books_app/features/home/presentation/views/book_details_view.dart';
import 'package:my_books_app/features/home/presentation/views/home_view.dart';
import 'package:my_books_app/features/search/presentation/views/search.dart';
import 'package:my_books_app/features/splash/presentation/views/splash_view.dart';

abstract class AppRoutes {
  static const home = '/homeView';
  static const bookdetails = '/bookdetails';
  static const search = '/search';
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
      GoRoute(
        path: bookdetails,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getit.get<HomeRepoImpl>()),
          child: BookDetailsView(
            book: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: search,
        builder: (context, state) => SearchView(),
      ),
    ],
  );
}
