import 'package:flutter/material.dart';

class OptionContainer extends StatelessWidget {
  final Icon icon;
  final onPressed;
  final String text;

  const OptionContainer(
      {super.key,
      required this.icon,
      required this.onPressed,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
              color: Colors.orange.shade100,
              borderRadius: BorderRadius.circular(12)),
          child: IconButton(
            onPressed: onPressed,
            icon: icon,
            color: Colors.orange.shade600,
          ),
        ),
        Text(
          text,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
        )
      ],
    );
  }
}
