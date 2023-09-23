import 'package:bookly_app/features/home_feature/presetation/views/widgets/rating_book.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'box_action.dart';
import 'custom_book_image_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.2),
          child: const CustomBookImageItem(imageUrl: 'https://www.itl.cat/pngfile/big/206-2063899_cute-kitten-images-hd.jpg'),
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
      ],
    );
  }
}
