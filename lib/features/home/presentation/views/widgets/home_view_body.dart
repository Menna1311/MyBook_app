import 'package:flutter/material.dart';
import 'package:my_books_app/core/utils/styles.dart';
import 'package:my_books_app/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:my_books_app/features/home/presentation/views/widgets/book_item_listview.dart';
import 'package:my_books_app/features/home/presentation/views/widgets/custom_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          BookItemListView(),
          SizedBox(
            height: 40,
          ),
          Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 30,
          ),
          BestSellerItem()
        ],
      ),
    );
  }
}
