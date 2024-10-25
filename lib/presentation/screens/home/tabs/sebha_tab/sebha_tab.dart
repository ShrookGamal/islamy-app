import 'package:flutter/material.dart';

import '../../../../../config/theme/my_theme.dart';
import '../../../../../core/assets_manager.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;

  int index = 0;

  double angle = 0;

  List<String> azkar = [
    ' سبحان الله  ',
    ' الحمدلله  ',
    ' لا اله الا الله ',
    ' الله اكبر ',
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
                left: size.width * 0.48,
                child: Image.asset(MyTheme.isDarkEnabled
                    ? AssetsManager.sebhaHeaderDarkImage
                    : AssetsManager.sebhaHeaderImage)),
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.12),
              child: Transform.rotate(
                angle: angle,
                child: Image.asset(
                    height: size.height * 0.35,
                    MyTheme.isDarkEnabled
                        ? AssetsManager.sebhaBodyDarkImage
                        : AssetsManager.sebhaBodyImage),
              ),
            ),
          ],
        ),
        Text(
          'عدد التسبيحات',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Spacer(
          flex: 1,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.43),
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              borderRadius: BorderRadius.circular(20)),
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 18),
          child: Text(
            counter.toString(),
            textAlign: TextAlign.center,
            style: TextStyle(color: Theme.of(context).colorScheme.secondary),
          ),
        ),
        Spacer(
          flex: 1,
        ),
        GestureDetector(
          onTap: onZekrClick,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: size.width * 0.3),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(30)),
            padding: EdgeInsets.all(10),
            child: Text(
              azkar[index],
              textAlign: TextAlign.center,
              style: TextStyle(color: Theme.of(context).colorScheme.secondary),
            ),
          ),
        ),
        Spacer(
          flex: 5,
        ),
      ],
    );
  }

  onZekrClick() {
    angle += 15;
    if (counter < 33) {
      counter++;
    } else {
      counter = 0;
      index++;
    }
    if (index == azkar.length) {
      index = 0;
    }
    setState(() {});
  }
}
