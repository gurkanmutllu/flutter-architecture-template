import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fluttermvvmtemplate/core/init/notifier/theme_notifier.dart';
import 'core/init/notifier/provider_list.dart';
import 'package:provider/provider.dart';

import 'core/constants/app/app_constants.dart';
import 'core/init/lang/language_manager.dart';
import 'view/authenticate/test/view/test_view.dart';

void main() {
  runApp(EasyLocalization(
    supportedLocales: LanguageManager.instance.supportedLocales,
    path: ApplicationConstants.LANG_ASSET_PATH,
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [...ApplicationProvider.instance.dependItems],
      child: MaterialApp(
        theme: Provider.of<ThemeNotifier>(context, listen: false).currentTheme,
        home: const TestView(),
      ),
    );
  }
}
