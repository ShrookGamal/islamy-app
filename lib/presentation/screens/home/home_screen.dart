import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_projects/core/assets_manager.dart';
import 'package:flutter_projects/presentation/screens/home/tabs/hadith_tab/hadith_tab.dart';
import 'package:flutter_projects/presentation/screens/home/tabs/quran_tab/quran_tab.dart';
import 'package:flutter_projects/presentation/screens/home/tabs/radio_tab/radio_tab.dart';
import 'package:flutter_projects/presentation/screens/home/tabs/sebha_tab/sebha_tab.dart';
import 'package:flutter_projects/presentation/screens/home/tabs/settings_tab/settings_tab.dart';
import 'package:provider/provider.dart';

import '../../../providers/settings_provider.dart';

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
    var myProvider = Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: myProvider.isLightTheme()
                  ? AssetImage(AssetsManager.lightBackGround)
                  : AssetImage(AssetsManager.darkBackGround),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.appBarTitle),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Theme.of(context).primaryColor),
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              selectedIndex = index;
              setState(() {});
            },
            type: BottomNavigationBarType.shifting,
            items: [
              BottomNavigationBarItem(
                  // backgroundColor: ColorsManager.goldColor,
                  icon: const ImageIcon(AssetImage(AssetsManager.quranIcon)),
                  label: AppLocalizations.of(context)!.quranLabel),
              BottomNavigationBarItem(
                  // backgroundColor: ColorsManager.darkBlue,
                  icon: const ImageIcon(AssetImage(AssetsManager.hadithIcon)),
                  label: AppLocalizations.of(context)!.hadithLabel),
              BottomNavigationBarItem(
                  //  backgroundColor: ColorsManager.goldColor,
                  icon: const ImageIcon(AssetImage(AssetsManager.sebhaIcon)),
                  label: AppLocalizations.of(context)!.sebhaLabel),
              BottomNavigationBarItem(
                  // backgroundColor: ColorsManager.goldColor,
                  icon: const ImageIcon(AssetImage(AssetsManager.radioIcon)),
                  label: AppLocalizations.of(context)!.radioLabel),
              BottomNavigationBarItem(
                  // backgroundColor: ColorsManager.goldColor,
                  icon: const Icon(Icons.settings),
                  label: AppLocalizations.of(context)!.settingsLabel),
            ],
          ),
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}
