import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_books_app/core/utils/app_routes.dart';
import 'package:my_books_app/core/utils/styles.dart';
import 'package:my_books_app/features/home/data/models/book_model/book_model.dart';
import 'package:my_books_app/features/home/presentation/views/widgets/book_item.dart';
import 'package:my_books_app/features/home/presentation/views/widgets/rating_item.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({
    super.key,
    required this.book,
  });
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.bookdetails);
      },
      child: Row(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: BookItem(imageUrl: book.volumeInfo.imageLinks.thumbnail),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.height * 0.3,
                  child: Text(book.volumeInfo.title ?? 'no title',
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20),
                ),
                Text(book.volumeInfo.authors?[0] ?? 'no author',
                    style: Styles.textStyle14),
                Row(
                  children: [
                    Text(
                      'Free',
                      style: Styles.textStyle20
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    RatingItem(
                        rating: book.volumeInfo.averageRating ?? 0,
                        count: book.volumeInfo.ratingsCount ?? 0),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
