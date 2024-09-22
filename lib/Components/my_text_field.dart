import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final controller;
  final bool obSecureText;

  const MyTextField(
      {super.key,
      required this.hintText,
      required this.controller,
      required this.obSecureText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 300,
      height: 60,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(25)),
      child: TextField(
        obscureText: obSecureText,
        controller: controller,
        decoration:
            InputDecoration(hintText: hintText, border: InputBorder.none),
      ),
    );
  }
}
