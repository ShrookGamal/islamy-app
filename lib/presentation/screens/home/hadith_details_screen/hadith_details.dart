import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_projects/presentation/screens/home/tabs/hadith_tab/hadith_tab.dart';

import '../../../../config/theme/my_theme.dart';
import '../../../../core/assets_manager.dart';

class HadithDetails extends StatelessWidget {
  const HadithDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Hadith hadith = ModalRoute.of(context)?.settings.arguments as Hadith;
    return Stack(
      children: [
        Image.asset(
          MyTheme.isDarkEnabled
              ? AssetsManager.darkBackGround
              : AssetsManager.lightBackGround,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.appBarTitle),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20),
            child: Card(
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: SingleChildScrollView(
                      child: ListTile(
                        title: Text(
                          hadith.title,
                          style: Theme.of(context).textTheme.headlineLarge,
                          textAlign: TextAlign.center,
                        ),
                        subtitle: Text(
                          hadith.content,
                          textDirection: TextDirection.rtl,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
