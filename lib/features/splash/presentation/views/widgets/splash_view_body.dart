import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_books_app/core/utils/app_routes.dart';
import 'package:my_books_app/core/utils/assets.dart';

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
      // Get.to(() => const HomeView(), transition: Transition.fade);
      GoRouter.of(context).push(AppRoutes.home);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(Assets.logo),
    );
  }
}
