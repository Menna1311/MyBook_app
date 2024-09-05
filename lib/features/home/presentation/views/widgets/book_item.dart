import 'package:flutter/material.dart';
import 'package:my_books_app/core/utils/assets.dart';

class BookItem extends StatelessWidget {
  const BookItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
                image: Image.asset(Assets.test).image, fit: BoxFit.fill)),
      ),
    );
  }
}
