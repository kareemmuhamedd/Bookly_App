import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'similar_book_list_view.dart';
class SimilarBoxSection extends StatelessWidget {
  const SimilarBoxSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text(
          'You can also like',
          style: Styles.titleNormal14.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const SimilarBoxListView(),

      ],
    );
  }
}