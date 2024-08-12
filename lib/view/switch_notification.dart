import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/getx/switch_controller.dart';

class Switch_notificationgetx extends StatefulWidget {
  const Switch_notificationgetx({super.key});

  @override
  State<Switch_notificationgetx> createState() => _Switch_notificationgetxState();
}

class _Switch_notificationgetxState extends State<Switch_notificationgetx> {

  final Switch_Controller get_notifications=Get.put(Switch_Controller());
  bool button= false;
  @override
  Widget build(BuildContext context) {
    debugPrint('Calling');
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Switch Notification",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigoAccent,
        centerTitle: true,
      ),

      body: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Text("Notifications"),
          Obx(() {

            return Switch(value:get_notifications.notification.value, onChanged: (value){
              get_notifications.setNotification(value);
            });
          })


        ],
      ),
    );
  }
}
