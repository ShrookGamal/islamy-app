import 'package:flutter/material.dart';
import 'package:flutter_projects/core/assets_manager.dart';

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.skip_previous_sharp,
                color: Theme.of(context).dividerColor,
              ),
              Icon(
                Icons.play_arrow,
                color: Theme.of(context).dividerColor,
                size: 40,
              ),
              Icon(
                Icons.skip_next,
                color: Theme.of(context).dividerColor,
              ),
            ],
          )
        ],
      ),
    );
  }
}
