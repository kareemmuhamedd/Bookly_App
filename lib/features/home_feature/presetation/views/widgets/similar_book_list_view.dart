import 'package:flutter/material.dart';

import 'custom_book_image_item.dart';
class SimilarBoxListView extends StatelessWidget {
  const SimilarBoxListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  SizedBox(
      height: size.height * 0.15,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 20,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: CustomBookImageItem(),
            );
          }),
    );
  }
}