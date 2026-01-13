import 'package:flutter/material.dart';

class NavigationProvider extends ChangeNotifier {
  int navigationIndex = 0;
  //naviguer
  void naviguer(int value) {
    navigationIndex = value;
    notifyListeners();
  }
}
