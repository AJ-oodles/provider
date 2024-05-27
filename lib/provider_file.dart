import 'package:flutter/material.dart';
class Counter extends ChangeNotifier{
  int count=0;
  int get _count=>count;
  void increment(){
    count++;
    notifyListeners();

}
}