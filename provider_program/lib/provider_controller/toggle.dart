import 'package:flutter/material.dart';

class Toggle with ChangeNotifier {
  bool _isOn = false;

  bool get isOn => _isOn;

  void toggle() {
    _isOn = !_isOn;
    notifyListeners();
  }
}
