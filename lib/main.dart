import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_books_app/core/utils/app_routes.dart';
import 'package:my_books_app/core/utils/service_locator.dart';
import 'package:my_books_app/cosntant.dart';
import 'package:my_books_app/features/home/data/models/book_model/repos/home_repo_impl.dart';
import 'package:my_books_app/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:my_books_app/features/home/presentation/manager/newest_books_cubit/newestbooks_cubit.dart';

void main() {
  setupLocator();
  runApp(const MyBook());
}

class MyBook extends StatelessWidget {
  const MyBook({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getit.get<HomeRepoImpl>(),
          ),
        ),
        BlocProvider(
          create: (context) => NewestbooksCubit(
            getit.get<HomeRepoImpl>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          // textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        routerConfig: AppRoutes.router,
      ),
    );
  }
}
