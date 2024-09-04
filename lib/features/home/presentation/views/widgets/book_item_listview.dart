import 'package:flutter/material.dart';
import 'package:my_books_app/features/home/presentation/views/widgets/book_item.dart';

class BookItemListView extends StatelessWidget {
  const BookItemListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.all(8.0),
            child: BookItem(),
          );
        },
      ),
    );
  }
}
