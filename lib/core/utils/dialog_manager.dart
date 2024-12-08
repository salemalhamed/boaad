import 'package:flutter/material.dart';

class DialogManager {
  DialogManager._();
  static final _instance = DialogManager._();
  factory DialogManager() {
    return _instance;
  }

  BuildContext? _context;
  set context(val) => _context = val;

  void showWinDialog() {}
}
