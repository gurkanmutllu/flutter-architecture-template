import 'package:flutter/material.dart';

abstract class BaseViewModel {
  BuildContext? contextt;

  void setContext(BuildContext context);
  void init();
}
