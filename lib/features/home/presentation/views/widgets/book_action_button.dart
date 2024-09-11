import 'package:flutter/material.dart';
import 'package:my_books_app/core/utils/styles.dart';

class BookActionButton extends StatelessWidget {
  const BookActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 64.0),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft:
                        Radius.circular(12.0), // Circular edge on the top-right
                    bottomLeft: Radius.circular(
                        12.0), // Circular edge on the bottom-right
                  ),
                ),
              ),
              child: Text(
                'Free',
                style: Styles.textStyle20.copyWith(color: Colors.black),
              ),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight:
                        Radius.circular(12.0), // Circular edge on the top-right
                    bottomRight: Radius.circular(
                        12.0), // Circular edge on the bottom-right
                  ),
                ),
              ),
              child: Text(
                'view the book',
                style: Styles.textStyle14.copyWith(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
