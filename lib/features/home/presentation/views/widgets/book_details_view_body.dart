import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_books_app/features/home/presentation/views/widgets/book_details_appbar.dart';
import 'package:my_books_app/features/home/presentation/views/widgets/book_item.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        SafeArea(
          child: CustomBookDetailAppbar(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.25),
          child: BookItem(),
        ),
      ],
    );
  }
}
