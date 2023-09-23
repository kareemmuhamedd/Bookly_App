import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomBookImageItem extends StatelessWidget {
  final String imageUrl;

  const CustomBookImageItem({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.green,
          image: DecorationImage(
            image: NetworkImage(
              imageUrl,
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
