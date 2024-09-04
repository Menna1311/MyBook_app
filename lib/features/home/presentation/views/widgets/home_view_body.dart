import 'package:flutter/material.dart';
import 'package:my_books_app/core/utils/styles.dart';
import 'package:my_books_app/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:my_books_app/features/home/presentation/views/widgets/book_item_listview.dart';
import 'package:my_books_app/features/home/presentation/views/widgets/custom_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: CustomAppBar(),
          ),
          const SliverToBoxAdapter(
            child: BookItemListView(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),
          const SliverToBoxAdapter(
            child: Text(
              'Best Seller',
              style: Styles.textStyle18,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 10,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(bottom: 16.0),
                  child: BestSellerItem(),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
