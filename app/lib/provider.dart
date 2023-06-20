import 'dart:developer';

import 'package:flutter/material.dart';

class Counter with ChangeNotifier{
  int count = 0;
  bool loading = false;

  void increment(){
    loading = true;

    try{
      count++;
    }catch(error){
      log(error.toString());
    }

    loading = false;
    notifyListeners();
  }
}