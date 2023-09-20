import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/utils/widgets/custom_button.dart';
import 'package:bookly_app/features/home/presetation/views/widgets/custom_book_image_item.dart';
import 'package:bookly_app/features/home/presetation/views/widgets/rating_book.dart';
import 'package:bookly_app/features/home/presetation/views/widgets/similar_box_section.dart';
import 'package:flutter/material.dart';

import 'book_details_section.dart';
import 'similar_book_list_view.dart';
import 'box_action.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsScreenBody extends StatelessWidget {
  const BookDetailsScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  CustomBookDetailsAppBar(),
                  BookDetailsSection(),
                  Expanded(
                    child: SizedBox(height: 50),
                  ),
                  SimilarBoxSection(),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
