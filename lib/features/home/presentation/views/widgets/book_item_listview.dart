import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:my_books_app/core/widgets/custom_error.dart';
import 'package:my_books_app/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:my_books_app/features/home/presentation/views/widgets/book_item.dart';

class BookItemListView extends StatelessWidget {
  const BookItemListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
      if (state is FeaturedBooksSuccess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
          child: ListView.builder(
            itemCount: state.books.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(right: 16.0, top: 16),
                child: BookItem(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks.thumbnail),
              );
            },
          ),
        );
      } else if (state is FeaturedBooksFAilure) {
        return CustomErrorWidget(errMessage: state.errMessage);
      } else {
        return SpinKitPouringHourGlassRefined(
          color: Colors.yellow,
        );
      }
    });
  }
}
