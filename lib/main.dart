import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_books_app/cosntant.dart';
import 'package:my_books_app/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const MyBook());
}

class MyBook extends StatelessWidget {
  const MyBook({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      home: const SplashView(),
    );
  }
}
