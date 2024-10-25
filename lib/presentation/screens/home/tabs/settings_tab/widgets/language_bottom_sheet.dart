import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguageSheet extends StatefulWidget {
  const LanguageSheet({super.key});

  @override
  State<LanguageSheet> createState() => _LanguageSheetState();
}

class _LanguageSheetState extends State<LanguageSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildSelectedLang(AppLocalizations.of(context)!.eng),
          SizedBox(
            height: 10,
          ),
          buildUnSelectedLang(AppLocalizations.of(context)!.ar)
        ],
      ),
    );
  }

  Widget buildSelectedLang(String selectedlang) {
    return Row(
      children: [
        Text(
          selectedlang,
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
    return Text(
      unSelectedLang,
      style: Theme.of(context).textTheme.labelSmall,
    );
  }
}
