import 'package:flutter/material.dart';
import 'package:flutter_projects/core/routes_manager.dart';
import '../quran_tab.dart';

class SuraNameWidget extends StatelessWidget {
  SuraItem suraItem;

  SuraNameWidget({super.key, required this.suraItem});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, RoutesManager.quranDetailsRoute,
            arguments: suraItem);
      },
      child: IntrinsicHeight(
        child: Row(
          textDirection: TextDirection.rtl,
          children: [
            Expanded(
                child: Text(
              suraItem.suraName,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            )),
            Container(
              color: Theme.of(context).dividerColor,
              width: 2,
            ),
            Expanded(
                child: Text(suraItem.versesNumber,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleMedium))
          ],
        ),
      ),
    );
  }
}
