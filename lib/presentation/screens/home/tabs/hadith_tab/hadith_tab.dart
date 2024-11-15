import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_projects/presentation/screens/home/tabs/hadith_tab/widgets/hadith_header_widget.dart';
import 'package:flutter_projects/presentation/screens/home/tabs/hadith_tab/widgets/hadith_title_widget.dart';

import '../../../../../core/assets_manager.dart';

class HadithTab extends StatefulWidget {
  HadithTab({super.key});

  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
  List<Hadith> hadithList = [];

  @override
  Widget build(BuildContext context) {
    if (hadithList.isEmpty) readHadithFile();
    return Column(
      children: [
        Expanded(flex: 1, child: Image.asset(AssetsManager.hadithHeaderImage)),
        HadithHeaderWidget(),
        hadithList.isEmpty
            ? CircularProgressIndicator(
                color: Theme.of(context).dividerColor,
              )
            : Expanded(
                flex: 2,
                child: ListView.builder(
                  itemBuilder: (context, index) => HadithTitleWidget(
                    hadith: hadithList[index],
                  ),
                  itemCount: hadithList.length,
                ))
      ],
    );
  }

  void readHadithFile() async {
    String hadithContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> hadithItemList = hadithContent.trim().split('#');
    for (int i = 0; i < hadithItemList.length; i++) {
      String hadithItem = hadithItemList[i];
      List<String> hadithLines = hadithItem.trim().split('\n');
      String title = hadithLines[0];
      hadithLines.removeAt(0);
      String content = hadithLines.join('\n');
      Hadith hadith = Hadith(title: title, content: content);
      hadithList.add(hadith);
    }
    setState(() {});
  }
}

class Hadith {
  String title;

  String content;

  Hadith({required this.title, required this.content});
}
