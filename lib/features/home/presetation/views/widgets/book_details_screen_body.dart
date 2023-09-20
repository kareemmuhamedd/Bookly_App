import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/utils/widgets/custom_button.dart';
import 'package:bookly_app/features/home/presetation/views/widgets/custom_book_image_item.dart';
import 'package:bookly_app/features/home/presetation/views/widgets/rating_book.dart';
import 'package:flutter/material.dart';

import 'bottom_book_details_screen_list_view.dart';
import 'box_action.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsScreenBody extends StatelessWidget {
  const BookDetailsScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  const CustomBookDetailsAppBar(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: size.width * 0.2),
                    child: const CustomBookImageItem(),
                  ),
                  const SizedBox(
                    height: 43,
                  ),
                  const Text(
                    'The Jungle Book',
                    style: Styles.titleNormal30,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Opacity(
                    opacity: 0.7,
                    child: Text(
                      'Rudyard Kipling',
                      style: Styles.titleMedium18.copyWith(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  const BookRating(
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  const SizedBox(height: 37),
                  const BoxAction(),
                  const Expanded(
                    child: SizedBox(height: 50),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'You can also like',
                      style: Styles.titleNormal14.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const BottomBookDetailsScreenListView(),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
