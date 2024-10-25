import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_projects/presentation/screens/home/tabs/settings_tab/widgets/language_bottom_sheet.dart';
import 'package:flutter_projects/presentation/screens/home/tabs/settings_tab/widgets/theme_bottom_sheet.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          AppLocalizations.of(context)!.themeLabel,
          style: Theme.of(context).textTheme.headlineMedium,
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
                  color: Theme.of(context).dividerColor,
                )),
            child: Text(
              AppLocalizations.of(context)!.light,
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          AppLocalizations.of(context)!.languageLabel,
          style: Theme.of(context).textTheme.headlineMedium,
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
                  color: Theme.of(context).dividerColor,
                )),
            child: Text(
              AppLocalizations.of(context)!.eng,
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
