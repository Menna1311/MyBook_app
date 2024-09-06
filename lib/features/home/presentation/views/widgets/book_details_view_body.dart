import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_books_app/core/utils/styles.dart';
import 'package:my_books_app/features/home/presentation/views/widgets/book_action_button.dart';
import 'package:my_books_app/features/home/presentation/views/widgets/book_details_appbar.dart';
import 'package:my_books_app/features/home/presentation/views/widgets/book_item.dart';
import 'package:my_books_app/features/home/presentation/views/widgets/rating_item.dart';
import 'package:my_books_app/features/home/presentation/views/widgets/similar_books_listview.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
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
                  style: Styles.textStyle18.copyWith(
                      fontStyle: FontStyle.italic, color: Colors.grey),
                ),
                const SizedBox(
                  height: 20,
                ),
                const RatingItem(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                SizedBox(
                  height: 40,
                ),
                const BookActionButton(),
                Expanded(
                  child: SizedBox(
                    height: 40,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text('you can also like this',
                        style: Styles.textStyle14),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SisnilarBookslistview(),
                SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        )
      ],
    );
    // return
  }
}
