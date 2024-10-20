import 'package:flutter/material.dart';
import 'package:flutter_projects/core/strings_manager.dart';
import 'package:flutter_projects/presentation/screens/home/tabs/hadith_tab/hadith_tab.dart';

import '../../../../core/assets_manager.dart';

class HadithDetails extends StatelessWidget {
  const HadithDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Hadith hadith = ModalRoute.of(context)?.settings.arguments as Hadith;
    return Stack(
      children: [
        Image.asset(
          AssetsManager.lightBackGround,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(StringsManager.appBarTitle),
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
                          style: Theme.of(context).textTheme.headlineMedium,
                          textAlign: TextAlign.center,
                        ),
                        subtitle: Text(
                          hadith.content,
                          textDirection: TextDirection.rtl,
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
