
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Favourite_Controller extends GetxController{

  RxList<String> fruites_List=['Apple','Orange','Mango','Banana','Graps'].obs;
  RxList fav_fruites=[].obs;

  addtofav(String value){
    fav_fruites.add(value);


  }

  removefav(String value){
    fav_fruites.remove(value);
  }

}