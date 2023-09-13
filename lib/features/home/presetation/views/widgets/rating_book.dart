import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 17,
          color: Colors.yellow,
        ),
        const SizedBox(width: 6.3),
        const Text(
          '4.8',
          style: Styles.titleMedium16,
        ),
        const SizedBox(width: 5),
        Text(
          ('(245)'),
          style: Styles.titleNormal14.copyWith(color: const Color(0xff707070)),
        )
      ],
    );
  }
}
