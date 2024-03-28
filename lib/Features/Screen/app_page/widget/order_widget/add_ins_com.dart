import 'package:coffee_shop_01/Features/Screen/app_page/widget/order_widget/Add-Ins.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/order_widget/Creamer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class add_ins_com extends StatelessWidget {
  const add_ins_com({super.key});

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
            'add ins',
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
          ),
          Add_Ins(),
          Creamer()
        ],
      ),
    );
  }
}
