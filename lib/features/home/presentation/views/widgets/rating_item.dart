import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_books_app/core/utils/styles.dart';

class RatingItem extends StatelessWidget {
  const RatingItem({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.rating,
    required this.count,
  });
  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amber,
        ),
        SizedBox(
          width: 4,
        ),
        Text(rating.toString(), style: Styles.textStyle14),
        Text('($count)', style: Styles.textStyle14),
      ],
    );
  }
}
