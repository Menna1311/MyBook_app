import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_books_app/core/utils/styles.dart';
import 'package:my_books_app/features/home/presentation/views/widgets/book_action_button.dart';
import 'package:my_books_app/features/home/presentation/views/widgets/book_details_appbar.dart';
import 'package:my_books_app/features/home/presentation/views/widgets/book_item.dart';
import 'package:my_books_app/features/home/presentation/views/widgets/rating_item.dart';
import 'package:my_books_app/features/home/presentation/views/widgets/similar_books_listview.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SafeArea(
                  child: CustomBookDetailAppbar(),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.25),
                  child: const BookItem(
                    imageUrl:
                        'https://www.bing.com/images/search?view=detailV2&ccid=ViMTSkFf&id=B9628CAF1EB604A3D4F765EFCCC327D093AB02CD&thid=OIP.ViMTSkFf3jMZv9DLBDvUlQHaEw&mediaurl=https%3A%2F%2Ffnfcrew.com%2Fopengraph%2FRD914FB0-A74-N0AB1-DF47-O01DDF2D-M5AB5.jpg&cdnurl=https%3A%2F%2Fth.bing.com%2Fth%2Fid%2FR.5623134a415fde3319bfd0cb043bd495%3Frik%3DzQKrk9Anw8zvZQ%26pid%3DImgRaw%26r%3D0&exph=1233&expw=1920&q=random+url+image&simid=608007799081205946&FORM=IRPRST&ck=F03D013954507E42E2856C8D9924C415&selectedIndex=9&itb=0&cw=966&ch=849&ajaxhist=0&ajaxserp=0',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text('Harry Potter', style: Styles.textStyle30),
                Text(
                  'Rydytard data',
                  style: Styles.textStyle18.copyWith(
                      fontStyle: FontStyle.italic, color: Colors.grey),
                ),
                const SizedBox(
                  height: 20,
                ),
                const RatingItem(
                  mainAxisAlignment: MainAxisAlignment.center,
                  rating: 4,
                  count: 300,
                ),
                SizedBox(
                  height: 40,
                ),
                const BookActionButton(),
                Expanded(
                  child: SizedBox(
                    height: 40,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text('you can also like this',
                        style: Styles.textStyle14),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SisnilarBookslistview(),
                SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        )
      ],
    );
    // return
  }
}
