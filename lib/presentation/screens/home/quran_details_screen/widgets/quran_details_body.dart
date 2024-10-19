import 'package:flutter/material.dart';
import 'package:flutter_projects/core/colors_manager.dart';

class QuranDetailsBody extends StatelessWidget {
  String verse;

  QuranDetailsBody({super.key, required this.verse});

  @override
  Widget build(BuildContext context) {
    return Text(
      verse,
      textAlign: TextAlign.center,
    );
  }
}
