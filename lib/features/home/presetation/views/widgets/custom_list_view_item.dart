import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.3,
      child: AspectRatio(
        aspectRatio: 2.8 / 4,
        child: Container(
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.green,
            image: const DecorationImage(
                image: AssetImage(
                  AssetsData.testImage,
                ),
                fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
