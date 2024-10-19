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
              fontWeight: FontWeight.w400)),
      cardTheme: CardTheme(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: Color(0XFFFCFAEE)));
  static ThemeData darkTheme = ThemeData();
}
