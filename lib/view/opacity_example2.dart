import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/getx/opacity_controller.dart';
class Opecity_Example extends StatefulWidget {
  const Opecity_Example({super.key});

  @override
  State<Opecity_Example> createState() => _Opecity_ExampleState();
}

class _Opecity_ExampleState extends State<Opecity_Example> {
  double opecity=0.4;
  @override
  Widget build(BuildContext context) {
    print("Opacity Changing");
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Opecity App",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigoAccent,
        centerTitle: true,
      ),

      body: Center(
        child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: Get.height*0.3,
              width: Get.width*0.5,
              color: Colors.red.withOpacity(opecity),

            ),

            SizedBox(height: 20,),
            Slider(value: opecity, onChanged: (value){
              opecity=value;
               setState(() {
                 
               });

            })

          ],
        ),

      ),

    );
  }
}
class Opacity_getx extends StatefulWidget {
  const Opacity_getx({super.key});

  @override
  State<Opacity_getx> createState() => _Opacity_getxState();
}

class _Opacity_getxState extends State<Opacity_getx> {

  final Opacity_Controller get_opacity= Get.put(Opacity_Controller());
  @override
  Widget build(BuildContext context) {
    print("Hello");
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Opecity App",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigoAccent,
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Obx(() =>  Container(
             height: Get.height*0.3,
             width: Get.width*0.5,
             color: Colors.red.withOpacity(get_opacity.opacity.value),

           ),),

            SizedBox(height: 20,),
           Obx(() =>  Slider(value:get_opacity.opacity.value, onChanged: (value){
             get_opacity.setOpacity(value);
           }))

          ],
        ),

      ),

    );
  }
}
