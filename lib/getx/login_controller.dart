

import 'dart:convert';


import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart';

class Login_Controller extends GetxController{

  final  emailController = TextEditingController().obs;
  final  passwordController = TextEditingController().obs;

  void loginApi()async{
     try{

       final response= await post(Uri.parse('https://reqres.in/api/login'),
           body:{
             'email' : emailController.value.text,
             'password' :passwordController.value.text,
           });
       var data=jsonDecode(response.body);
      print(response.statusCode);
       print(data);

       if(response.statusCode==200){

         Get.snackbar(
             'Request Sucessfull','Congratulation',
           backgroundColor:CupertinoColors.destructiveRed,
           colorText: CupertinoColors.white,
         );
       }else{

         Get.snackbar('Login Failed',data['error'],
           backgroundColor:CupertinoColors.destructiveRed,
           colorText: CupertinoColors.white,
         );

       }


     }catch(e){
       Get.snackbar('Exception Found', e.toString(),
         backgroundColor:CupertinoColors.destructiveRed,
         colorText: CupertinoColors.white,


       );
       print(e.toString());
     }


  }



}