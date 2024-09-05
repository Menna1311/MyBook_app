import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_books_app/features/home/presentation/views/widgets/book_details_view_body.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: BookDetailsViewBody());
  }
}
