import 'package:flutter/material.dart';
import 'package:flutter_projects/providers/settings_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

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
    var myProvider = Provider.of<SettingsProvider>(context);
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: REdgeInsets.symmetric(vertical: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                    left: size.width * 0.48,
                    child: Image.asset(myProvider.isLightTheme()
                        ? AssetsManager.sebhaHeaderImage
                        : AssetsManager.sebhaHeaderDarkImage)),
                Padding(
                  padding: myProvider.isLightTheme()
                      ? REdgeInsets.only(top: size.height * 0.062)
                      : REdgeInsets.only(top: size.height * 0.099),
                  child: Transform.rotate(
                    angle: angle,
                    child: Image.asset(myProvider.isLightTheme()
                        ? AssetsManager.sebhaBodyImage
                        : AssetsManager.sebhaBodyDarkImage),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25.h),
            Text(
              'عدد التسبيحات',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              margin: REdgeInsets.symmetric(horizontal: size.width * 0.43),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  borderRadius: BorderRadius.circular(20)),
              padding: REdgeInsets.symmetric(vertical: 18),
              child: Text(
                counter.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            GestureDetector(
              onTap: onZekrClick,
              child: Container(
                margin: REdgeInsets.symmetric(horizontal: size.width * 0.3),
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(30)),
                padding: REdgeInsets.all(10),
                child: Text(
                  azkar[index],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
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
