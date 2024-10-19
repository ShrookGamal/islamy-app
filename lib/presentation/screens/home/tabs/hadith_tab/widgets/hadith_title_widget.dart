import 'package:flutter/material.dart';

import '../hadith_tab.dart';

class hadithTitleWidget extends StatelessWidget {
  Hadith hadith;

  hadithTitleWidget({super.key, required this.hadith});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Text(
        hadith.title,
        style: Theme.of(context).textTheme.titleMedium,
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.center,
      ),
    );
  }
}
