import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final boxColor;
  final textColor;
  final void Function()? onTap;
  final buttonBorder;
  const MyButton({super.key, required this.text, required this.boxColor, required this.textColor, required this.onTap, this.buttonBorder});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 320, height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: boxColor,
          border: buttonBorder,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Text(text, style: TextStyle(color: textColor, fontSize: 18, fontWeight: FontWeight.bold),)
      ),
    );
  }
}
