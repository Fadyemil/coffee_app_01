// import 'package:coffee_shop_01/Features/Screen/app_page/widget/order_widget/Flavor.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/order_widget/Splenda.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/order_widget/Sweetener.dart';
// import 'package:coffee_shop_01/Features/Screen/app_page/widget/order_widget/add_syrUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sweentener extends StatelessWidget {
  const Sweentener({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: 405,
      // height: 295,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sweentener',
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
          ),
          Splenda(),
          addSweentener(),
        ],
      ),
    );
  }
}
