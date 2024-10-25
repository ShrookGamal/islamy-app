import 'package:flutter/material.dart';
import 'package:flutter_projects/config/theme/my_theme.dart';
import 'package:flutter_projects/core/assets_manager.dart';
import 'package:flutter_projects/core/routes_manager.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, RoutesManager.homeRoute);
    });
    return Stack(alignment: Alignment.center, children: [
      Image.asset(
        MyTheme.isDarkEnabled
            ? AssetsManager.splashBackGroundDark
            : AssetsManager.splashBackGround,
        width: double.infinity,
        fit: BoxFit.fill,
      ),
      Image.asset(
        MyTheme.isDarkEnabled
            ? AssetsManager.splashLogoDark
            : AssetsManager.splashLogo,
        width: 262,
        height: 262,
      ),
    ]);
  }
}
