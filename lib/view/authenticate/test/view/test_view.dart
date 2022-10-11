import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../../../core/base/state/base_state.dart';
import '../../../../core/base/view/base_widget.dart';
import '../../../../core/extension/string_extension.dart';
import '../../../../core/init/lang/language_manager.dart';
import '../../../../core/init/lang/locale_keys.g.dart';

import '../viewmodel/test_view_model.dart';

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends BaseState<TestView> {
  late TestViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return BaseView<TestViewModel>(
      viewModel: TestViewModel(),
      onModelReady: ((model) {
        viewModel = model;
      }),
      onPageBuilder: (context, value) => scaffoldBody,
    );
  }

  Widget get scaffoldBody => Scaffold(
        appBar: AppBar(
          title: textWelcomeWidget(),
          actions: [iconButtonChangeTheme()],
        ),
        floatingActionButton: floatingActionButtonNumberIncrement,
        body: textNumber,
      );

  Text textWelcomeWidget() => Text(LocaleKeys.welcome.locale);

  IconButton iconButtonChangeTheme() {
    return IconButton(
        onPressed: () {
          context.setLocale(LanguageManager.instance.trLocale);
        },
        icon: const Icon(Icons.change_history));
  }

  FloatingActionButton get floatingActionButtonNumberIncrement {
    return FloatingActionButton(
      onPressed: () => viewModel.incrementNumber(),
    );
  }

  Widget get textNumber {
    return Observer(
      builder: (BuildContext context) => Text(
        viewModel.number.toString(),
      ),
    );
  }
}
