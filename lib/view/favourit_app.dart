import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/getx/fav_controller.dart';
import 'package:getx_statemanagement/utils/utils.dart';

class Favorite_Home extends StatefulWidget {
  const Favorite_Home({super.key});

  @override
  State<Favorite_Home> createState() => _Favorite_HomeState();
}

class _Favorite_HomeState extends State<Favorite_Home> {
  // List<String> fruites_List=['Apple','Orange','Mango','Banana','Graps'];
  // List<String> fav_fruites=[];

  //Using Getx in the this file

  final Favourite_Controller _favourite_controller =
      Get.put(Favourite_Controller());
  @override
  Widget build(BuildContext context) {
    debugPrint("Build");
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Favourite App",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigoAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: _favourite_controller.fruites_List.length,
            itemBuilder: (context, index) {
              return Obx((){

                return Card(
                  child: ListTile(
                    onTap: () {
                      if (_favourite_controller.fav_fruites.contains(
                          _favourite_controller.fruites_List[index].toString())) {
                        _favourite_controller.fav_fruites.remove(
                            _favourite_controller.fruites_List[index].toString()
                        );
                        showCustomSnackbar("Favorite Fruit Removed Successfully");

                      } else {
                        _favourite_controller.fav_fruites.add(
                            _favourite_controller.fruites_List[index].toString());

                        showCustomSnackbar("Favorite Fruit Added Successfully");

                      }
                      // setState(() {
                      //
                      // });
                    },
                    title: Text(
                      _favourite_controller.fruites_List[index].toString(),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(
                      Icons.favorite,
                      color: _favourite_controller.fav_fruites.contains(
                          _favourite_controller.fruites_List[index]
                              .toString())
                          ? Colors.red
                          : Colors.white,
                    ),
                  ),
                );
              });
            }),
      ),
    );
  }
}
