import 'package:bookly_app/features/home/presetation/views/widgets/book_details_screen_body.dart';
import 'package:flutter/material.dart';
class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookDetailsScreenBody(),
    );
  }
}
