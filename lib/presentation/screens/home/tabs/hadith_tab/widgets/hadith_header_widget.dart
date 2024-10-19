import 'package:flutter/material.dart';

class HadithHeaderWidget extends StatelessWidget {
  const HadithHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.symmetric(
                horizontal: BorderSide(
                    color: Theme.of(context).dividerColor, width: 2))),
        child: Text(
          'الأحاديث',
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ));
  }
}
