import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  static final darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: kPrimaryColor,
    textTheme: GoogleFonts.montserratTextTheme(
      ThemeData.dark().textTheme,
    ),
  );

  /// this is light theme if you want to add it
// static final lightTh = ThemeData(
//   primaryColor: kPrimaryColor,
//   colorScheme: const ColorScheme.light(
//     background: Colors.white,
//   ),
//   brightness: Brightness.light,
// );
}
