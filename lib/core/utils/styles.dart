import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

const kFontSectraFine = 'GT Sectra Fine';

abstract class Styles {
  static const titleMedium18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const titleMedium16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static const titleNormal20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
  );
  static const titleNormal30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.normal,
    fontFamily: kFontSectraFine,
  );
  static const titleNormal14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );
}
