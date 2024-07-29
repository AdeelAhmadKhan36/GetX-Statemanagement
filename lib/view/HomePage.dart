import 'package:flutter/material.dart';
import 'package:get/get.dart';
class My_HomePage extends StatefulWidget {
  const My_HomePage({super.key});

  @override
  State<My_HomePage> createState() => _My_HomePageState();
}

class _My_HomePageState extends State<My_HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx Practice",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.indigoAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(
          children: [

            SizedBox(height: 30,),
            Card(
              child: ListTile(
                title: Text("Dialog Alert in Getx"),

                onTap:(){
                  Get.defaultDialog(
                    title: "Delete Chat",
                    middleText: "Are you sure?",
                    titlePadding: EdgeInsets.only(top: 30),
                    contentPadding: EdgeInsets.only(top: 30),
                    confirm: TextButton(onPressed:(){}, child: Text("Ok")),
                    cancel: TextButton(onPressed:(){
                      Get.back();
                    }, child: Text("Cancel")),

                  );
                },
              ),
            ),

            Card(
              child: ListTile(
                title: Text("Getx Buttom Sheet"),
                onTap:(){
                  Get.bottomSheet(
                   Container(
                     decoration: BoxDecoration(
                       color: Colors.indigoAccent,
                       borderRadius: BorderRadius.circular(20),
                     ),
                     child: Column(
                       children: [
                         ListTile(
                           leading: Icon(Icons.light_mode,color: Colors.white,),
                           title: Text("Ligth Mode",style: TextStyle(color: Colors.white),),
                           onTap: (){
                              Get.changeTheme(ThemeData.light());
                           },
                         ),
                         ListTile(
                           leading: Icon(Icons.dark_mode_outlined,color: Colors.white,),
                           title: Text("Drak Mode",style: TextStyle(color: Colors.white)),
                           onTap: (){
                             Get.changeTheme(ThemeData.dark());
                           },
                         )
                       ],
                     ),
                   )
                  );
                },
              ),
            ),
            SizedBox(height: 460,),

            ElevatedButton(onPressed: (){

              Get.toNamed('/PageTwo');
            },
                style:ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                    foregroundColor: Colors.white,
                  minimumSize:  Size(500, 50),

                ),
                child: Text("Move to Page Two"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {

        Get.snackbar('Welcome to Getx', 'Keep Learning',
        backgroundColor: Colors.red,
          colorText: Colors.white,
          duration: Duration(seconds: 5)

        );
      },
      child: Icon(Icons.gpp_good_sharp),
      ),


    );
  }
}
