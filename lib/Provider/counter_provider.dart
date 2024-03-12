import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';



class CounterProvider extends ChangeNotifier {

  int _count = 0;

  int get count => _count;

  void increment_count() {
    _count += 1;
    notifyListeners();
  }

  void decrement_count() {
    _count -= 1;
    notifyListeners();
  }

}