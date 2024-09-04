import 'package:flutter/material.dart';
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
            Assets.logo,
            height: 80,
          ),
          Spacer(),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 35,
              )),
        ],
      ),
    );
  }
}
