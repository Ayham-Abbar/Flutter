import 'package:flutter/material.dart';

class Model extends ChangeNotifier {
  int counter = 0;
  get getCounter => counter;
  increment() {
    counter++;
    notifyListeners();
  }

  decrement() {
    counter--;
    notifyListeners();
  }
}