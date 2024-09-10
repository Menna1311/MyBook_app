import 'package:flutter/material.dart';
import 'package:my_books_app/core/utils/assets.dart';

class BookItem extends StatelessWidget {
  const BookItem({
    super.key,
    required this.imageUrl,
  });
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
                image: Image.network(imageUrl).image, fit: BoxFit.fill)),
      ),
    );
  }
}
