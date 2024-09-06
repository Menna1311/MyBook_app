import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_books_app/core/utils/app_routes.dart';
import 'package:my_books_app/core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Row(
        children: [
          Image.asset(
            Assets.logo2,
            height: 30,
          ),
          Spacer(),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRoutes.search);
              },
              icon: Icon(
                Icons.search,
                size: 35,
              )),
        ],
      ),
    );
  }
}
