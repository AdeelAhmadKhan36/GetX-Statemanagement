import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language_Home extends StatelessWidget {
  const Language_Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Language",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.indigoAccent,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                title: Text('message'.tr),
                subtitle: Text('name'.tr),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                      onPressed: () {
                        Get.updateLocale(const Locale('en','US'));
                      },
                      child: const Text(
                        "English",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                  OutlinedButton(
                      onPressed: () {

                        Get.updateLocale(const Locale('ur','PK'));
                      },
                      child: const Text(
                        "Urdu",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ))
                ],
              )
            ],
          ),
        ));
  }
}
