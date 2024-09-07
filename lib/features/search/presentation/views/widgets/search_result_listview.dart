import 'package:flutter/material.dart';
import 'package:my_books_app/features/home/presentation/views/widgets/best_seller_item.dart';

class SearchResultListview extends StatelessWidget {
  const SearchResultListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 16.0),
          child: BestSellerItem(),
        );
      },
    );
  }
}
