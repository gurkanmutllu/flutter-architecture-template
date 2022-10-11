import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

import '../../../../core/base/model/base_view_model.dart';
import '../../../../core/constants/enums/app_theme_enum.dart';
import '../../../../core/init/notifier/theme_notifier.dart';

part 'test_view_model.g.dart';

// ignore: library_private_types_in_public_api
class TestViewModel = _TestViewModelBase with _$TestViewModel;

abstract class _TestViewModelBase with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) {
    contextt = context;
  }

  @override
  void init() {}

  @observable
  int number = 0;

  @computed
  bool get isEven => number % 2 == 0;

  @action
  void incrementNumber() {
    number++;
  }

  void changeTheme() {
    Provider.of<ThemeNotifier>(contextt!, listen: false).changeValue(AppThemes.DARK);
  }
}
