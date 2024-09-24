//
//
// import 'dart:ui';
//
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
// import 'package:get/get_state_manager/get_state_manager.dart';
// import 'package:image_picker/image_picker.dart';
//
// class Image_Controller extends GetxController{
//
//   RxString ImagePath=''.obs;
//   Future getImage()async{
//     final ImagePicker _picker=ImagePicker();
//     final Image= await _picker.pickImage(source: ImageSource.camera);
//
//     if(Image!=null){
//       ImagePath.value=Image.path.toString();
//
//     }else{
//
//       debugPrint('Image is Not Taken');
//     }
//
//   }
//
// }