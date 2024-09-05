import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_books_app/core/utils/styles.dart';
import 'package:my_books_app/features/home/presentation/views/widgets/book_action_button.dart';
import 'package:my_books_app/features/home/presentation/views/widgets/book_details_appbar.dart';
import 'package:my_books_app/features/home/presentation/views/widgets/book_item.dart';
import 'package:my_books_app/features/home/presentation/views/widgets/rating_item.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const SafeArea(
          child: CustomBookDetailAppbar(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.25),
          child: const BookItem(),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text('Harry Potter', style: Styles.textStyle30),
        Text(
          'Rydytard data',
          style: Styles.textStyle18
              .copyWith(fontStyle: FontStyle.italic, color: Colors.grey),
        ),
        const SizedBox(
          height: 4,
        ),
        const RatingItem(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const BookActionButton()
      ],
    );
  }
}
