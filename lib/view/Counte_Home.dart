import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/view/controller_counter.dart';

class Counter_Home extends StatefulWidget {
  const Counter_Home({super.key});

  @override
  State<Counter_Home> createState() => _Counter_HomeState();
}


class _Counter_HomeState extends State<Counter_Home> {
  
  //dependencey injection which is necessary
  final Counter_Controller controller=Get.put(Counter_Controller());
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   
  }


  int x=0;
  @override
  Widget build(BuildContext context) {


    debugPrint("Counter Pressed: $x");
    return Scaffold(

      appBar: AppBar(
        title: const Text(
          "Counter App",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigoAccent,
        centerTitle: true,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

       Obx(() =>  Center(child: Text(controller.counter.toString(),style: TextStyle(fontSize:40, fontWeight: FontWeight.bold),)),)

      ],),
      floatingActionButton:  FloatingActionButton(onPressed: ()
      {
        controller.incrementCounter();
      },
      child: Icon(Icons.add, size: 30,weight: 40,),
      ),
    );
  }
}
