import 'package:flutter/material.dart';
class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Two",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.indigoAccent,
        centerTitle: true,
      ),
    );
  }
}
