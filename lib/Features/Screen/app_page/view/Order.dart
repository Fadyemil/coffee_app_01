import 'package:coffee_shop_01/Features/Screen/app_page/widget/order_widget/All_items.dart';
import 'package:flutter/material.dart';

import '../widget/Home_page_widget/delaisGroub.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(8),
        child: const Column(
          children: [
            delaisGroub(text1: 'Food'),
            BuildElement1to3(),
            SizedBox(height: 7),
            BuildElement4to6(),
            SizedBox(height: 7),
            BuildElement7(),
            SizedBox(height: 7),
            delaisGroub(text1: 'Food'),
            SizedBox(height: 7),
            BuildElementfood(),
            delaisGroub(text1: 'At Home Coffee'),
            SizedBox(height: 7),
            BuildElementCoffee(),
            delaisGroub(text1: 'Merchandise'),
            SizedBox(height: 7),
            BuildElementMerchandise(),
          ],
        ),
      ),
    );
  }
}
