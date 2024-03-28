import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.text, required this.ontap, required this.color});

  final String text;
  final Function() ontap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 80,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: IconButton(onPressed: ontap, icon: Text('$text')),
    );
  }
}
