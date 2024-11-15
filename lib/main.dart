import 'package:flutter/material.dart';
import 'package:flutter_projects/providers/settings_provider.dart';
import 'package:provider/provider.dart';

import 'my_app/my_app.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (BuildContext context) => SettingsProvider()
        ..getLanguage()
        ..getTheme(),
      child: MyApp()));
}
