import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:my_books_app/core/widgets/custom_error.dart';
import 'package:my_books_app/features/home/data/models/book_model/book_model.dart';
import 'package:my_books_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:my_books_app/features/home/presentation/views/widgets/book_item.dart';

class SisnilarBookslistview extends StatelessWidget {
  const SisnilarBookslistview({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: BookItem(
                    imageUrl: state.books[index].volumeInfo.imageLinks
                            ?.smallThumbnail ??
                        'no image',
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errMessage: state.errorMessage);
        } else {
          return const SpinKitPouringHourGlassRefined(
            color: Colors.yellow,
          );
        }
      },
    );
  }
}
