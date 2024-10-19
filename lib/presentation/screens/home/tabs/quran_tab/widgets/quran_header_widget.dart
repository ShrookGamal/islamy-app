import 'package:flutter/material.dart';

import '../../../../../../core/strings_manager.dart';

class QuranHeaderWidget extends StatelessWidget {
  QuranHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.symmetric(
              horizontal:
                  BorderSide(color: Theme.of(context).dividerColor, width: 2))),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
                flex: 3,
                child: Text(StringsManager.versesNumber,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineMedium)),
            Container(
              color: Theme.of(context).dividerColor,
              width: 2,
            ),
            Expanded(
                flex: 3,
                child: Text(StringsManager.chapterName,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineMedium)),
          ],
        ),
      ),
    );
  }
}
