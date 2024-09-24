import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  const RoundButton(
      {super.key,
      // required this.Loading,
      required this.title,
      required this.height,
      required this.width,
      required this.onPressed,
      required this.TextColor,
      required this.ButtonColor});
  // final bool Loading;
  final String title;
  final double height, width;
  final VoidCallback onPressed;
  final Color TextColor, ButtonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: ButtonColor,
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        child:Center(
                child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.white),
              )));
  }
}
