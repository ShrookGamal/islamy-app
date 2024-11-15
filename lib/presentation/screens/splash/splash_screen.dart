import 'package:flutter/material.dart';
import 'package:flutter_projects/core/assets_manager.dart';
import 'package:flutter_projects/core/routes_manager.dart';
import 'package:flutter_projects/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<SettingsProvider>(context);
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, RoutesManager.homeRoute);
    });
    return Stack(alignment: Alignment.center, children: [
      Image.asset(
        myProvider.isLightTheme()
            ? AssetsManager.splashBackGround
            : AssetsManager.splashBackGroundDark,
        width: double.infinity,
        fit: BoxFit.fill,
      ),
      Image.asset(
        myProvider.isLightTheme()
            ? AssetsManager.splashLogo
            : AssetsManager.splashLogoDark,
        width: 262,
        height: 262,
      ),
    ]);
  }
}
