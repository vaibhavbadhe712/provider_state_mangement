import 'package:flutter/material.dart';

class ButtonController with ChangeNotifier {
  bool _isButtonVisible = true;

  bool get isButtonVisible => _isButtonVisible;

  void toggleButtonVisibility() {
    _isButtonVisible = !_isButtonVisible;
    notifyListeners();
  }
}
