import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:my_books_app/core/widgets/custom_error.dart';
import 'package:my_books_app/features/home/presentation/manager/newest_books_cubit/newestbooks_cubit.dart';
import 'package:my_books_app/features/home/presentation/views/widgets/best_seller_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestbooksCubit, NewestbooksState>(
      builder: (context, state) {
        if (state is NewestbooksSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: 10,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: BestSellerItem(
                  book: state.books[index],
                ),
              );
            },
          );
        } else if (state is NewestbooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const SpinKitPouringHourGlassRefined(
            color: Colors.yellow,
          );
        }
      },
    );
  }
}
