
import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Opacity_Controller extends GetxController{

  RxDouble opacity =0.4.obs;
   setOpacity(double value){
     opacity.value=value;

     debugPrint('Moving');

   }



}