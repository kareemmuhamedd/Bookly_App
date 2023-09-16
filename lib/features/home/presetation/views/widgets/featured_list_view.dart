import 'package:flutter/material.dart';

import 'custom_list_view_item.dart';
class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.3,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 20,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(top: 15,bottom: 22,right: 15),
              child: FeaturedListViewItem(),
            );
          }),
    );
  }
}