
import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Switch_Controller extends GetxController{

  RxBool notification= false.obs;

  setNotification(newvalue){
    notification.value=newvalue;
    debugPrint("Your Notifications");
  }

}