import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            FeaturedBooksListView(),
            SizedBox(height: 20),
            Text(
              'Best seller',
              style: Styles.titleMedium,
            )
          ],
        ),
      ),
    );
  }
}
