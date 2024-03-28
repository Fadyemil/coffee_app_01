import 'package:flutter/material.dart';
import 'package:get/get.dart';

class delaisGroub extends StatelessWidget {
  const delaisGroub({
    super.key,
    required this.text1,
  });

  final String text1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text1,
          style:  TextStyle(
            color: Get.isDarkMode? Colors.white:Colors.black,
            fontWeight: FontWeight.w900,
            fontSize: 18,
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child:  Text('See All',
              style: TextStyle(
                color: Get.isDarkMode? Colors.white:Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 12,
              )),
        ),
      ],
    );
  }
}