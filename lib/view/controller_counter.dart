import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Counter_Controller extends GetxController{
  //initialization according to getx
  RxInt counter=1.obs;


  incrementCounter(){
    counter.value ++;
    debugPrint("Counter Incremented");
    print("Hello Adel");
  }
}