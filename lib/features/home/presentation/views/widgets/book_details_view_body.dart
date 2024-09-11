import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_books_app/core/utils/styles.dart';
import 'package:my_books_app/features/home/data/models/book_model/book_model.dart';
import 'package:my_books_app/features/home/presentation/views/widgets/book_action_button.dart';
import 'package:my_books_app/features/home/presentation/views/widgets/book_details_appbar.dart';
import 'package:my_books_app/features/home/presentation/views/widgets/book_item.dart';
import 'package:my_books_app/features/home/presentation/views/widgets/rating_item.dart';
import 'package:my_books_app/features/home/presentation/views/widgets/similar_books_listview.dart';
import 'package:url_launcher/url_launcher.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.book});
  final BookModel book;
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
                  child: BookItem(
                    imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? '',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  book.volumeInfo.title!,
                  style: Styles.textStyle30,
                  textAlign: TextAlign.center,
                ),
                Text(
                  book.volumeInfo.authors?[0] ?? 'no author',
                  style: Styles.textStyle18.copyWith(
                      fontStyle: FontStyle.italic, color: Colors.grey),
                ),
                const SizedBox(
                  height: 20,
                ),
                RatingItem(
                  mainAxisAlignment: MainAxisAlignment.center,
                  rating: book.volumeInfo.averageRating ?? 0,
                  count: book.volumeInfo.ratingsCount ?? 0,
                ),
                SizedBox(
                  height: 40,
                ),
                BookActionButton(
                  book: book,
                  onPressed: () async {
                    if (book.volumeInfo.previewLink != null) {
                      Uri uri = Uri.parse(book.volumeInfo.previewLink!);
                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri);
                      } else {
                        // Handle the case where the URL cannot be launched
                        print("Could not launch URL");
                      }
                    } else {
                      print("No preview link available");
                    }
                  },
                ),
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
                SisnilarBookslistview(
                  book: book,
                ),
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
