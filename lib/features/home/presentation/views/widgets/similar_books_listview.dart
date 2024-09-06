import 'package:flutter/widgets.dart';
import 'package:my_books_app/features/home/presentation/views/widgets/book_item.dart';

class SisnilarBookslistview extends StatelessWidget {
  const SisnilarBookslistview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: BookItem(),
          );
        },
      ),
    );
  }
}
