import 'package:flutter/material.dart';

class ThemeSheet extends StatefulWidget {
  const ThemeSheet({super.key});

  @override
  State<ThemeSheet> createState() => _ThemeSheetState();
}

class _ThemeSheetState extends State<ThemeSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildSelectedTheme('Light'),
          SizedBox(
            height: 10,
          ),
          buildUnSelectedTheme('Dark')
        ],
      ),
    );
  }

  Widget buildSelectedTheme(String selectedTheme) {
    return Row(
      children: [
        Text(
          selectedTheme,
          style: Theme.of(context).textTheme.labelSmall,
        ),
        Spacer(),
        Icon(
          Icons.check,
          color: Colors.white,
        )
      ],
    );
  }

  Widget buildUnSelectedTheme(String unSelectedTheme) {
    return Text(
      'dark',
      style: Theme.of(context).textTheme.labelSmall,
    );
  }
}
