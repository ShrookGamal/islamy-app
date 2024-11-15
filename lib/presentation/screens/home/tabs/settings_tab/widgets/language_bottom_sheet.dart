import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_projects/providers/settings_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class LanguageSheet extends StatefulWidget {
  const LanguageSheet({super.key});

  @override
  State<LanguageSheet> createState() => _LanguageSheetState();
}

class _LanguageSheetState extends State<LanguageSheet> {
  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: REdgeInsets.all(20),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                myProvider.changeAppLanguage('en');
              },
              child: myProvider.currentLanguage == 'en'
                  ? buildSelectedLang(AppLocalizations.of(context)!.eng)
                  : buildUnSelectedLang(AppLocalizations.of(context)!.eng)),
          SizedBox(
            height: 20.h,
          ),
          InkWell(
              onTap: () {
                myProvider.changeAppLanguage('ar');
              },
              child: myProvider.currentLanguage == 'ar'
                  ? buildSelectedLang(AppLocalizations.of(context)!.ar)
                  : buildUnSelectedLang(AppLocalizations.of(context)!.ar))
        ],
      ),
    );
  }

  Widget buildSelectedLang(String selectedLang) {
    return Row(
      children: [
        Text(
          selectedLang,
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

  Widget buildUnSelectedLang(String unSelectedLang) {
    return Row(
      children: [
        Text(
          unSelectedLang,
          style: Theme.of(context).textTheme.labelSmall,
        ),
      ],
    );
  }
}
