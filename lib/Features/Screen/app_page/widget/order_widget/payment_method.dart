import 'package:flutter/material.dart';

class payment_method extends StatelessWidget {
  const payment_method(
      {super.key, required this.text, required this.text1, this.icon});

  final String text;
  final String text1;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16),
      width: 406,
      height: 85,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: const TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 15),
              Text(text1)
            ],
          ),
          const Spacer(),
          IconButton(onPressed: () {}, icon: icon ?? Icon(Icons.donut_large))
        ],
      ),
    );
  }
}
