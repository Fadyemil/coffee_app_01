import 'package:flutter/material.dart';

class Bar extends StatelessWidget {
  const Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Thank you! ',
        style: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 28,
          color: Color(0xff868686)
        ),
      ),
    );
  }
}