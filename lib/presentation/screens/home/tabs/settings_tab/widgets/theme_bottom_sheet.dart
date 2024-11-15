import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_projects/providers/settings_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class ThemeSheet extends StatefulWidget {
  const ThemeSheet({super.key});

  @override
  State<ThemeSheet> createState() => _ThemeSheetState();
}
class _ThemeSheetState extends State<ThemeSheet> {
  @override
  Widget build(BuildContext context) {
    var myProvide = Provider.of<SettingsProvider>(context);
    return Container(
      padding: REdgeInsets.all(30),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                myProvide.changeAppTheme(ThemeMode.light);
              },
              child: myProvide.currentTheme == ThemeMode.light
                  ? buildSelectedTheme(AppLocalizations.of(context)!.light)
                  : buildUnSelectedTheme(AppLocalizations.of(context)!.light)),
          SizedBox(
            height: 20.h,
          ),
          InkWell(
              onTap: () {
                myProvide.changeAppTheme(ThemeMode.dark);
              },
              child: myProvide.currentTheme == ThemeMode.dark
                  ? buildSelectedTheme(AppLocalizations.of(context)!.dark)
                  : buildUnSelectedTheme(AppLocalizations.of(context)!.dark))
        ],
      ),
    );
  }

  Widget buildSelectedTheme(String selectedTheme) {
    return Row(
      children: [
        Text(
          selectedTheme,
          style: Theme.of(context).textTheme.labelSmall,
        ),
        Spacer(),
        Icon(
          Icons.check,
          color: Colors.white,
        )
      ],
    );
  }

  Widget buildUnSelectedTheme(String unSelectedTheme) {
    return Row(
      children: [
        Text(
          unSelectedTheme,
          style: Theme.of(context).textTheme.labelSmall,
        ),
      ],
    );
  }
}
