import 'package:flutter/material.dart';
import 'package:my_books_app/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:my_books_app/features/search/presentation/views/widgets/search_result_listview.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomSearchTextField(),
          SizedBox(
            height: 20,
          ),
          Expanded(child: SearchResultListview()),
        ],
      ),
    );
  }
}
