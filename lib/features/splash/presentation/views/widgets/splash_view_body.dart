import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_books_app/core/utils/assets.dart';
import 'package:my_books_app/features/home/presentation/views/home_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const HomeView(), transition: Transition.fade);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(Assets.logo),
    );
  }
}
