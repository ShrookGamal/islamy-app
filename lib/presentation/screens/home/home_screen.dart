import 'package:flutter/material.dart';
import 'package:flutter_projects/core/assets_manager.dart';
import 'package:flutter_projects/core/colors_manager.dart';
import 'package:flutter_projects/core/strings_manager.dart';
import 'package:flutter_projects/presentation/screens/home/tabs/hadith_tab/hadith_tab.dart';
import 'package:flutter_projects/presentation/screens/home/tabs/quran_tab/quran_tab.dart';
import 'package:flutter_projects/presentation/screens/home/tabs/radio_tab/radio_tab.dart';
import 'package:flutter_projects/presentation/screens/home/tabs/sebha_tab/sebha_tab.dart';
import 'package:flutter_projects/presentation/screens/home/tabs/settings_tab/settings_tab.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    QuranTab(),
    HadithTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTab()
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AssetsManager.lightBackGround),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(StringsManager.appBarTitle),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          type: BottomNavigationBarType.shifting,
          items: const [
            BottomNavigationBarItem(
                backgroundColor: ColorsManager.goldColor,
                icon: ImageIcon(AssetImage(AssetsManager.quranIcon)),
                label: StringsManager.quranLabel),
            BottomNavigationBarItem(
                backgroundColor: ColorsManager.goldColor,
                icon: ImageIcon(AssetImage(AssetsManager.hadithIcon)),
                label: StringsManager.hadithLabel),
            BottomNavigationBarItem(
                backgroundColor: ColorsManager.goldColor,
                icon: ImageIcon(AssetImage(AssetsManager.sebhaIcon)),
                label: StringsManager.sebhaLabel),
            BottomNavigationBarItem(
                backgroundColor: ColorsManager.goldColor,
                icon: ImageIcon(AssetImage(AssetsManager.radioIcon)),
                label: StringsManager.radioLabel),
            BottomNavigationBarItem(
                backgroundColor: ColorsManager.goldColor,
                icon: Icon(Icons.settings),
                label: StringsManager.settingsLabel),
          ],
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}
