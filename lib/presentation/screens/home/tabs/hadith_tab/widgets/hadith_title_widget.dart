import 'package:flutter/material.dart';
import 'package:flutter_projects/core/routes_manager.dart';

import '../hadith_tab.dart';

class HadithTitleWidget extends StatelessWidget {
  Hadith hadith;

  HadithTitleWidget({super.key, required this.hadith});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, RoutesManager.hadithDetailsRoute,
            arguments: hadith);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Text(
          hadith.title,
          style: Theme.of(context).textTheme.titleMedium,
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
