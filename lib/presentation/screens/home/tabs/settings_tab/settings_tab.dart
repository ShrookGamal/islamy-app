import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_projects/presentation/screens/home/tabs/settings_tab/widgets/language_bottom_sheet.dart';
import 'package:flutter_projects/presentation/screens/home/tabs/settings_tab/widgets/theme_bottom_sheet.dart';
import 'package:flutter_projects/providers/settings_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: REdgeInsets.symmetric(vertical: 100.0, horizontal: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          AppLocalizations.of(context)!.themeLabel,
          style: Theme.of(context).textTheme.labelLarge,
        ),
        SizedBox(
          height: 10.h,
        ),
        InkWell(
          onTap: () {
            showThemeBottomSheet(context);
          },
          child: Container(
            padding: REdgeInsets.symmetric(vertical: 8, horizontal: 5),
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Theme.of(context).dividerColor,
                )),
            child: Text(
              myProvider.isLightTheme()
                  ? AppLocalizations.of(context)!.light
                  : AppLocalizations.of(context)!.dark,
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ),
        ),
        SizedBox(
          height: 50.h,
        ),
        Text(
          AppLocalizations.of(context)!.languageLabel,
          style: Theme.of(context).textTheme.labelLarge,
        ),
        SizedBox(
          height: 8.h,
        ),
        InkWell(
          onTap: () {
            showLangBottomSheet(context);
          },
          child: Container(
            padding: REdgeInsets.symmetric(vertical: 8, horizontal: 5),
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Theme.of(context).dividerColor,
                )),
            child: Text(
              myProvider.currentLanguage == 'en'
                  ? AppLocalizations.of(context)!.eng
                  : AppLocalizations.of(context)!.ar,
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
