import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_books_app/core/utils/styles.dart';

class RatingItem extends StatelessWidget {
  const RatingItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amber,
        ),
        SizedBox(
          width: 4,
        ),
        Text('4.5', style: Styles.textStyle14),
        Text('(345)')
      ],
    );
  }
}
