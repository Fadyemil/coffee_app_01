// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';

class ShewImage extends StatelessWidget {
  const ShewImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 413,
      height: 95,
      child: Center(
        child: Image.asset(
          'assets/image/Frame.png',
        ),
      ),
    );
  }
}
