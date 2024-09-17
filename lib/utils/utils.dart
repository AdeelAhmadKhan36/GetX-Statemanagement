import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class  Utils{
    //Control Automatically Shift from Email to Password
   static void FieldonChnage(BuildContext context, FocusNode current, FocusNode nextFocus){

     current.unfocus();
     FocusScope.of(context).requestFocus(nextFocus);
   }





  void showCustomSnackbar(String message) {
    Get.rawSnackbar(
      backgroundColor: Colors.red,

      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.only(bottom: 770, left: 16.0, right: 16.0), // Top margin and left-right padding
      padding: const EdgeInsets.symmetric(horizontal: 16.0), // Padding inside the snackbar
      messageText: Container(
        height: 60,
        child: Center(
          child: Text(
            message,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.white, // Set text color here
            ),
          ),
        ),
      ),
      borderRadius: 8.0, // Optional: Adds rounded corners
    );
  }
}


