import 'package:flutter/material.dart';
import 'package:my_books_app/features/home/presentation/views/widgets/book_item_listview.dart';
import 'package:my_books_app/features/home/presentation/views/widgets/custom_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        BookItemListView(),
      ],
    );
  }
}
