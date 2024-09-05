import 'package:flutter/material.dart';
import 'package:my_books_app/core/utils/app_routes.dart';
import 'package:my_books_app/cosntant.dart';

void main() {
  runApp(const MyBook());
}

class MyBook extends StatelessWidget {
  const MyBook({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        // textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
      routerConfig: AppRoutes.router,
    );
  }
}
