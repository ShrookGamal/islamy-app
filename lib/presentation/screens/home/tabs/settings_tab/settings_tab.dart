import 'package:flutter/material.dart';
import 'package:flutter_projects/presentation/screens/home/tabs/settings_tab/widgets/language_bottom_sheet.dart';
import 'package:flutter_projects/presentation/screens/home/tabs/settings_tab/widgets/theme_bottom_sheet.dart';

import '../../../../../core/colors_manager.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'Theme',
          style: Theme.of(context).textTheme.labelLarge,
        ),
        SizedBox(
          height: 5,
        ),
        InkWell(
          onTap: () {
            showThemeBottomSheet(context);
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: ColorsManager.goldColor,
                )),
            child: Text(
              'Light',
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Language',
          style: Theme.of(context).textTheme.labelLarge,
        ),
        SizedBox(
          height: 5,
        ),
        InkWell(
          onTap: () {
            showLangBottomSheet(context);
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: ColorsManager.goldColor,
                )),
            child: Text(
              'English',
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ),
        )
      ]),
    );
  }

  void showThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context) => ThemeSheet());
  }

  void showLangBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context, builder: (context) => LanguageSheet());
  }
}
