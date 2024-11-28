import 'package:flutter/material.dart';

class CounterScreencontroler with ChangeNotifier {
  int count = 0;

  void onincrement(){
    count++;
    notifyListeners();
  }
}