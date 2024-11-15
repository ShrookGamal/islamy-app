import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuranHeaderWidget extends StatelessWidget {
  QuranHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.symmetric(
              horizontal: BorderSide(
                  color: Theme.of(context).dividerColor, width: 2.w))),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
                flex: 3,
                child: Text(AppLocalizations.of(context)!.chapterName,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.labelLarge)),
            Container(
              color: Theme.of(context).dividerColor,
              width: 2.w,
            ),
            Expanded(
                flex: 3,
                child: Text(AppLocalizations.of(context)!.versesNumber,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.labelLarge)),
          ],
        ),
      ),
    );
  }
}
