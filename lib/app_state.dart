import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  double _Total = 0.0;
  double get Total => _Total;
  set Total(double value) {
    _Total = value;
  }

  int _index = 0;
  int get index => _index;
  set index(int value) {
    _index = value;
  }

  int _Num = 0;
  int get Num => _Num;
  set Num(int value) {
    _Num = value;
  }

  int _Numofitems = -1;
  int get Numofitems => _Numofitems;
  set Numofitems(int value) {
    _Numofitems = value;
  }

  double _FinalPrice = 0.0;
  double get FinalPrice => _FinalPrice;
  set FinalPrice(double value) {
    _FinalPrice = value;
  }

  bool _choose = false;
  bool get choose => _choose;
  set choose(bool value) {
    _choose = value;
  }
}
