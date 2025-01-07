import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/theme/my_theme.dart';

class LightTheme extends BaseTheme {
  @override
  Color get backgroundColor => const Color(0xffF2FEFF);

  @override
  Color get primaryColor => const Color(0xff5669FF);

  @override
  Color get textColor => const Color(0xff1C1C1C);

  @override
  ThemeData get themeData => ThemeData(
        primaryColor: primaryColor,
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: backgroundColor,
        ),
        scaffoldBackgroundColor: backgroundColor,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          showSelectedLabels: true,
          selectedItemColor: Colors.white,
          backgroundColor: primaryColor,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            shape:  RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
        textTheme: TextTheme(
          titleSmall: GoogleFonts.inter(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
            color: const Color(0xff1C1C1C),
          ),
          titleMedium: GoogleFonts.inter(
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
            color: primaryColor,
          ),titleLarge: GoogleFonts.inter(
            fontSize: 30.0,
            fontWeight: FontWeight.w700,
            color: primaryColor,
          ),
        ),
      );
}
