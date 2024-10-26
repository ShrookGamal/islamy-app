import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_projects/core/assets_manager.dart';
import 'package:flutter_projects/core/strings_manager.dart';
import 'package:flutter_projects/presentation/screens/home/tabs/quran_tab/quran_tab.dart';
import 'package:flutter_projects/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class QuranDetails extends StatefulWidget {
  QuranDetails({super.key});

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<SettingsProvider>(context);
    SuraItem suraItem = ModalRoute.of(context)?.settings.arguments as SuraItem;
    if (verses.isEmpty) readQuranFile(suraItem.index);
    return Stack(
      children: [
        Image.asset(
          myProvider.isLightTheme()
              ? AssetsManager.lightBackGround
              : AssetsManager.darkBackGround,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              suraItem.suraName,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
            child: Card(
                child: Column(
              children: [
                Text(StringsManager.suraHeader,
                    style: Theme.of(context).textTheme.headlineMedium),
                Container(
                  height: 1,
                  width: 270,
                  color: Theme.of(context).dividerColor,
                ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.all(8.0),
                      child: verses.isEmpty
                          ? Center(
                              child: CircularProgressIndicator(
                              color: Theme.of(context).dividerColor,
                            ))
                          : Text(
                              verses[index],
                                  textAlign: TextAlign.center,
                                  textDirection: TextDirection.rtl,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                              ),
                              itemCount: verses.length,
                  ),
                ),
              ],
            )),
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
