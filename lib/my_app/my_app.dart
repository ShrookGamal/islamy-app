import 'package:flutter/material.dart';
import 'package:flutter_projects/core/routes_manager.dart';
import 'package:flutter_projects/presentation/screens/home/quran_details_screen/quran_details.dart';
import 'package:flutter_projects/presentation/screens/splash/splash_screen.dart';

import '../config/theme/my_theme.dart';
import '../presentation/screens/home/hadith_details_screen/hadith_details.dart';
import '../presentation/screens/home/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: ThemeMode.light,
      initialRoute: RoutesManager.splashRoute,
      routes: {
        RoutesManager.splashRoute: (context) => const SplashScreen(),
        RoutesManager.homeRoute: (context) => HomeScreen(),
        RoutesManager.quranDetailsRoute: (context) => QuranDetails(),
        RoutesManager.hadithDetailsRoute: (context) => HadithDetails(),
      },
      /*onGenerateRoute: (RouteSettings settings)
      {
        switch(settings.name)
            {
          case(RoutesManager.homeRoute):
            {
              return CupertinoPageRoute(builder: (context)=>HomeScreen());
            }
          case(RoutesManager.splashRoute):
            {
              return CupertinoPageRoute(builder: (context)=>const SplashScreen());
            }
          case(RoutesManager.quranDetailsRoute):
            {
              return CupertinoPageRoute(builder: (context)=>QuranDetails());
            }
           }

      },*/
      debugShowCheckedModeBanner: false,
    );
  }
}
