import 'package:flutter/material.dart';

class ModelCosumer extends ChangeNotifier {
  String userName = 'admin';
  String password = '123';
  change() {
    userName = 'user';
    // password = '456';
    notifyListeners();
  }
}
