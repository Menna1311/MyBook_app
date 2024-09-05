import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_books_app/core/utils/app_routes.dart';
import 'package:my_books_app/core/utils/assets.dart';
import 'package:my_books_app/core/utils/styles.dart';
import 'package:my_books_app/features/home/presentation/views/widgets/rating_item.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({
    super.key,
  });

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
            child: AspectRatio(
              aspectRatio: 2.8 / 4,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                        image: Image.asset(Assets.test).image,
                        fit: BoxFit.fill)),
              ),
            ),
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
                  child: const Text('Harry Potter and the order of the phoenix',
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20),
                ),
                const Text('the author', style: Styles.textStyle14),
                Row(
                  children: [
                    Text(
                      '19.99 €',
                      style: Styles.textStyle20
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    const RatingItem()
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
