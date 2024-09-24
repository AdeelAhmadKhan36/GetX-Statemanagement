import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/res/assets/image_assets.dart';
import 'package:getx_statemanagement/res/componants/roundutton.dart';
import 'package:getx_statemanagement/res/fonts/fonts.dart';

class My_HomePage extends StatefulWidget {
  const My_HomePage({super.key});

  @override
  State<My_HomePage> createState() => _My_HomePageState();
}

class _My_HomePageState extends State<My_HomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.2;
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          "Getx Applications",
          style: TextStyle(color: Colors.white, fontFamily: Fonts.bold,),
        ),
        backgroundColor: Colors.indigoAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              height: Get.height * 0.5,
             decoration: BoxDecoration(
               color: Colors.green,
               image: DecorationImage(image: AssetImage(ImageAssets.homepage))
             ),
              child: const Center(
                  child: Text(
                'Getx State Management ',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
            ),
            const SizedBox(
              height: 30,
            ),
            Card(
              child: ListTile(
                title: const Text("Dialog Alert in Getx"),
                onTap: () {
                  Get.defaultDialog(
                    title: "Delete Chat",
                    middleText: "Are you sure?",
                    titlePadding: const EdgeInsets.only(top: 30),
                    contentPadding: const EdgeInsets.only(top: 30),
                    confirm:
                        TextButton(onPressed: () {}, child: const Text("Ok")),
                    cancel: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: const Text("Cancel")),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Card(
              child: ListTile(
                title: const Text("Getx Buttom Sheet"),
                onTap: () {
                  Get.bottomSheet(Container(
                    decoration: BoxDecoration(
                      color: Colors.indigoAccent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: const Icon(
                            Icons.light_mode,
                            color: Colors.white,
                          ),
                          title: const Text(
                            "Ligth Mode",
                            style: TextStyle(color: Colors.white),
                          ),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.dark_mode_outlined,
                            color: Colors.white,
                          ),
                          title: const Text("Drak Mode",
                              style: TextStyle(color: Colors.white)),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                          },
                        )
                      ],
                    ),
                  ));
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            RoundButton(onPressed: () {  },
               title: 'Move to Next Page',
              height: 50,
              width: 500,
              TextColor: Colors.white,
              ButtonColor:Colors.indigo,



            )
            // ElevatedButton(
            //     onPressed: () {
            //       Get.toNamed('/PageTwo');
            //     },
            //     style: ElevatedButton.styleFrom(
            //       backgroundColor: Colors.indigo,
            //       foregroundColor: Colors.white,
            //       minimumSize: const Size(500, 50),
            //     ),
            //     child: const Text("Move to Page Two"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar('Welcome to Getx', 'Keep Learning',
              backgroundColor: Colors.red,
              colorText: Colors.white,
              duration: const Duration(seconds: 5));
        },
        backgroundColor: Colors.indigo,
        child: const Icon(
          Icons.gpp_good_sharp,
          color: Colors.white,
        ),
      ),
    );
  }
}
