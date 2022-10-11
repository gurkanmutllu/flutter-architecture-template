import 'package:flutter/cupertino.dart';

class LanguageManager {
  static LanguageManager? _instance;
  static LanguageManager get instance {
    if (_instance == null) LanguageManager._init();
    return _instance!;
  }

  LanguageManager._init();

  final enLocale = const Locale("en", "US");
  final trLocale = const Locale("tr", "TR");

  List<Locale> get supportedLocales => [enLocale, trLocale];
}
