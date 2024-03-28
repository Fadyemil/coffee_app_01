// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BuildBottom extends StatelessWidget {
  const BuildBottom({super.key, required this.text, required this.onTap});

  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 320,
        height: 60,
        decoration: const BoxDecoration(
          color: Color(0xff563B32),
          borderRadius: BorderRadius.all(
            Radius.circular(22),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
