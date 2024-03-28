// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';

class detailsOrder extends StatelessWidget {
  detailsOrder({super.key});

  List<String> additionalDetails = [
    'XLarge, 3 Splenda',
    '6 Pump (s) Pumpkin spice',
    '3 Shot (s) Espresso',
    'Pumpkin Spice Toppings',
    'Oatmilk',
    'Normal Ice ',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 430,
      padding: EdgeInsets.only(right: 16, left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (var detail in additionalDetails) Text(detail),
          const SizedBox(height: 33),
          const Text(
            'Special Instructions',
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
          const SizedBox(height: 15),
          const Text(
            'Gluten Free, please make sure as I have Celiac Disease',
            style: TextStyle(fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
