import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonTitle;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final double? fontSize;

  const CustomButton({
    Key? key,
    required this.backgroundColor,
    required this.textColor,
    this.borderRadius,
    required this.buttonTitle,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
          backgroundColor: backgroundColor,
        ),
        onPressed: () {},
        child: Text(
          buttonTitle,
          style: Styles.titleMedium18.copyWith(
            color: textColor,
            fontWeight: FontWeight.w900,
            fontSize: fontSize
          ),
        ),
      ),
    );
  }
}
