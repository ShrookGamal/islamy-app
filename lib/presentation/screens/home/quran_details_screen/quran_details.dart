import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_projects/core/assets_manager.dart';
import 'package:flutter_projects/core/strings_manager.dart';
import 'package:flutter_projects/presentation/screens/home/quran_details_screen/widgets/quran_details_body.dart';
import 'package:flutter_projects/presentation/screens/home/tabs/quran_tab/quran_tab.dart';

class QuranDetails extends StatefulWidget {
  QuranDetails({super.key});

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    SuraItem suraItem = ModalRoute.of(context)?.settings.arguments as SuraItem;
    if (verses.isEmpty) readQuranFile(suraItem.index);
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
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Column(
              children: [
                Text(suraItem.suraName,
                    style: Theme.of(context).textTheme.headlineMedium),
                Container(
                  height: 1,
                  width: 270,
                  color: Theme.of(context).dividerColor,
                ),
                Expanded(
                  child: Card(
                      shape: Theme.of(context).cardTheme.shape,
                      color: Theme.of(context).cardTheme.color,
                      child: verses.isEmpty
                          ? const Center(child: CircularProgressIndicator())
                          : ListView.builder(
                              itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  verses[index],
                                  textAlign: TextAlign.center,
                                  textDirection: TextDirection.rtl,
                                ),
                              ),
                              itemCount: verses.length,
                            )),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  void readQuranFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');

    List<String> suraLines = fileContent.trim().split('\n');
    // هنا انا عايزة اعمل ليست لكل صورة و اشيل في كل اندكس ايه
    // trim => remove white spaces
    verses = suraLines;
    setState(() {});
  }
}
