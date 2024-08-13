import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/getx/image_controller.dart';

class Image_Getx extends StatefulWidget {
  const Image_Getx({super.key});

  @override
  State<Image_Getx> createState() => _Image_GetxState();
}

class _Image_GetxState extends State<Image_Getx> {
  final Image_Controller _controller = Get.put(Image_Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Image Picker",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigoAccent,
        centerTitle: true,
      ),
      body: Obx(() {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 40,
                backgroundImage: _controller.ImagePath.isNotEmpty
                    ? FileImage(File(_controller.ImagePath.toString()))
                    : null,
                child: _controller.ImagePath.isEmpty
                    ? const Icon(Icons.person, size: 40) // Placeholder icon
                    : null,
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  _controller.getImage();
                },
                child: const Text("Please Choose Image"),
              ),
            ),
          ],
        );
      }),
    );
  }
}
