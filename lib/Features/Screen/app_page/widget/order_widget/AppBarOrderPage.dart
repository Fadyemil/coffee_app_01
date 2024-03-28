import 'package:flutter/material.dart';

class AppBarOrderPage extends StatelessWidget {
  const AppBarOrderPage({
    super.key,
    required this.image,
    required this.text,
  });

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 430,
      height: 153,
      color: const Color(0xff4E8D7C),
      child: Row(
        children: [
          const SizedBox(width: 75),
          SizedBox(
            width: 75,
            height: 98,
            child: Image.asset(
              image,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(width: 73),
          Container(
            padding: EdgeInsets.only(top:40 ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Text(
                  textAlign: TextAlign.center,
                  'A wonderful and \ndelicious drink',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
