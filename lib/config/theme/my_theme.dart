import 'package:flutter/material.dart';
import 'package:flutter_projects/core/colors_manager.dart';

class MyTheme {
  //static bool isDarkEnabled = false;
  static ThemeData lightTheme = ThemeData(
      colorScheme: ColorScheme.fromSeed(
          seedColor: ColorsManager.goldColor,
          primary: ColorsManager.goldColor,
          secondary: ColorsManager.black,
          background: ColorsManager.goldColor),
      primaryColor: ColorsManager.goldColor,
      appBarTheme: const AppBarTheme(
          shadowColor: Colors.transparent,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w700, color: Colors.black),
          iconTheme: IconThemeData(
            color: Colors.black,
          )),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: ColorsManager.goldColor,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white),
      scaffoldBackgroundColor: Colors.transparent,
      dividerColor: ColorsManager.goldColor,
      textTheme: const TextTheme(
          headlineLarge: TextStyle(color: ColorsManager.black, fontSize: 25),
          headlineMedium: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: Color(0XFF242424)),
          titleMedium: TextStyle(
              fontSize: 19,
              color: ColorsManager.black,
              fontWeight: FontWeight.w400),
          labelMedium: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 18,
              color: ColorsManager.goldColor),
          labelSmall: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 16,
              color: Colors.white)),
      cardTheme: CardTheme(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: Color(0XFFFCFAEE)),
      bottomSheetTheme: BottomSheetThemeData(
          elevation: 10,
          /*shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),)),*/
          backgroundColor: ColorsManager.goldColor.withOpacity(0.7)));

  static ThemeData darkTheme = ThemeData(
      appBarTheme: const AppBarTheme(
          shadowColor: Colors.transparent,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: ColorsManager.white),
          iconTheme: IconThemeData(
            color: ColorsManager.white,
          )),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: ColorsManager.darkBlue,
          showUnselectedLabels: false,
          selectedItemColor: ColorsManager.yellow,
          unselectedItemColor: Colors.white),
      scaffoldBackgroundColor: Colors.transparent,
      dividerColor: ColorsManager.yellow,
      textTheme: const TextTheme(
          headlineLarge: TextStyle(color: ColorsManager.yellow, fontSize: 25),
          headlineMedium: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: ColorsManager.white),
          titleMedium: TextStyle(
              fontSize: 19,
              color: ColorsManager.white,
              fontWeight: FontWeight.w400),
          labelMedium: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 18,
              color: ColorsManager.yellow),
          labelSmall: TextStyle(
              fontWeight: FontWeight.normal, fontSize: 16, color: Colors.white),
          bodyMedium: TextStyle(color: ColorsManager.yellow)),
      cardTheme: CardTheme(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: ColorsManager.darkBlue),
      bottomSheetTheme: BottomSheetThemeData(
        elevation: 10,
        backgroundColor: ColorsManager.darkBlue.withOpacity(0.7),
        /*shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),)),*/
      ),
      colorScheme: ColorScheme.fromSeed(
          seedColor: ColorsManager.darkBlue,
          primary: ColorsManager.yellow,
          secondary: ColorsManager.white,
          background: ColorsManager.darkBlue),
      primaryColor: ColorsManager.darkBlue);
}
