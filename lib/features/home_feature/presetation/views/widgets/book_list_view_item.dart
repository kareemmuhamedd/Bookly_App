import 'package:bookly_app/features/home_feature/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home_feature/presetation/views/book_details_screen.dart';
import 'package:bookly_app/features/home_feature/presetation/views/widgets/custom_book_image_item.dart';
import 'package:bookly_app/features/home_feature/presetation/views/widgets/rating_book.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import '../book_details_screen.dart';

class BookListViewItem extends StatelessWidget {
  final BookModel bookModel;

  const BookListViewItem({
    Key? key,
    required this.bookModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(BookDetailsScreen.routeName);
      },
      child: SizedBox(
        height: 126,
        child: Row(
          children: [
            CustomBookImageItem(
              imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: size.width * 0.5,
                    child: Text(
                      bookModel.volumeInfo.title!,
                      style: Styles.titleNormal20
                          .copyWith(fontFamily: kFontSectraFine),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    bookModel.volumeInfo.authors![0],
                    style: Styles.titleNormal14,
                  ),
                  const SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Free',
                        style: Styles.titleNormal20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      BookRating(
                        count: bookModel.volumeInfo.ratingsCount ?? 0,
                        rating: bookModel.volumeInfo.averageRating ?? 0.0,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
