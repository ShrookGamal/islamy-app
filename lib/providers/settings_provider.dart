import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// observable which has data
class SettingsProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;

  void changeAppTheme(ThemeMode newTheme) {
    if (currentTheme == newTheme) return;
    currentTheme = newTheme;
    saveTheme(newTheme);
    notifyListeners();
  }
  bool isLightTheme() {
    return currentTheme == ThemeMode.light;
  }

  void saveTheme(ThemeMode themeMode) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (themeMode == ThemeMode.light) {
      prefs.setString('theme', 'light');
    } else {
      prefs.setString('theme', 'dark');
    }
  }

  void getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String theme = prefs.getString('theme') ?? 'light';
    if (theme == 'light') {
      currentTheme = ThemeMode.light;
    } else {
      currentTheme = ThemeMode.dark;
    }
    notifyListeners();
  }

  String currentLanguage = 'en';
  void changeAppLanguage(String newLang) {
    if (currentLanguage == newLang) return;
    currentLanguage = newLang;
    saveLanguage(newLang);
    notifyListeners();
  }

  void saveLanguage(String lang) async {
    SharedPreferences ref = await SharedPreferences.getInstance();
    if (lang == 'en') {
      ref.setString('lang', 'en');
    } else {
      ref.setString('lang', 'ar');
    }
  }

  void getLanguage() async {
    SharedPreferences ref = await SharedPreferences.getInstance();
    String lang = ref.getString('lang') ?? 'en';
    if (lang == 'en') {
      currentLanguage = 'en';
    } else {
      currentLanguage = 'ar';
    }
    notifyListeners();
  }
}
