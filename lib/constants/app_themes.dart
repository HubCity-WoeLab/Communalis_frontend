import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.surface,
    colorScheme: ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      surface: AppColors.surface,
    ),
    textTheme: GoogleFonts.robotoTextTheme(),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primary,
      titleTextStyle: GoogleFonts.roboto(
        color: AppColors.white,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      iconTheme: const IconThemeData(color: AppColors.white),
      centerTitle: true,
      elevation: 0,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      textTheme: ButtonTextTheme.primary,
    ),
  );
}
