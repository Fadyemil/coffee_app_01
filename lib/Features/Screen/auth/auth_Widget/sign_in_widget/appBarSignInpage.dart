// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';

class appBarSignInpage extends StatelessWidget {
  const appBarSignInpage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      child: TextButton(
        onPressed: () {},
        child: const Text(
          'Skip',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
