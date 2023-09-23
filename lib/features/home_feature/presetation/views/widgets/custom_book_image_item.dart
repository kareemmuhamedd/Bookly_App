import 'package:bookly_app/core/utils/styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.8 / 4,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: imageUrl,
          errorWidget: (context, url, error) => Container(
            color: Colors. pinkAccent,
            child: const Center(
              child: Text(
                'Coming soon',
                style: Styles.titleNormal20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
