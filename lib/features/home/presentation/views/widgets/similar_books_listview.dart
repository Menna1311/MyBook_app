import 'package:flutter/widgets.dart';
import 'package:my_books_app/features/home/presentation/views/widgets/book_item.dart';

class SisnilarBookslistview extends StatelessWidget {
  const SisnilarBookslistview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: BookItem(
              imageUrl:
                  'https://www.bing.com/images/search?view=detailV2&ccid=ViMTSkFf&id=B9628CAF1EB604A3D4F765EFCCC327D093AB02CD&thid=OIP.ViMTSkFf3jMZv9DLBDvUlQHaEw&mediaurl=https%3A%2F%2Ffnfcrew.com%2Fopengraph%2FRD914FB0-A74-N0AB1-DF47-O01DDF2D-M5AB5.jpg&cdnurl=https%3A%2F%2Fth.bing.com%2Fth%2Fid%2FR.5623134a415fde3319bfd0cb043bd495%3Frik%3DzQKrk9Anw8zvZQ%26pid%3DImgRaw%26r%3D0&exph=1233&expw=1920&q=random+url+image&simid=608007799081205946&FORM=IRPRST&ck=F03D013954507E42E2856C8D9924C415&selectedIndex=9&itb=0&cw=966&ch=849&ajaxhist=0&ajaxserp=0',
            ),
          );
        },
      ),
    );
  }
}
