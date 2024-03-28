// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BuildText extends StatelessWidget {
  const BuildText({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 311,
      height: 24,
      child: Text(
        'Keep me logged in',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}