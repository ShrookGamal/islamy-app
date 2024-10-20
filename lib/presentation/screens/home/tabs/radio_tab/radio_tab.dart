import 'package:flutter/material.dart';
import 'package:flutter_projects/core/assets_manager.dart';
import 'package:flutter_projects/core/colors_manager.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(AssetsManager.radioHeaderImage),
          Text(
            'إذاعة القرآن الكريم',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.skip_previous_sharp,
                color: ColorsManager.goldColor,
              ),
              Icon(
                Icons.play_arrow,
                color: ColorsManager.goldColor,
                size: 40,
              ),
              Icon(
                Icons.skip_next,
                color: ColorsManager.goldColor,
              ),
            ],
          )
        ],
      ),
    );
  }
}
