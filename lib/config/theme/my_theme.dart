import 'package:flutter/material.dart';
import 'package:flutter_projects/core/colors_manager.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
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
          headlineMedium: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 21,
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

  static ThemeData darkTheme = ThemeData();
}
