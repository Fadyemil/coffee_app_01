import 'package:coffee_shop_01/Features/Screen/app_page/view/Account.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/Home_page/HomePage.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/view/Order.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/view/Rewards.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/view/Scan_Pay.dart';
import 'package:flutter/material.dart';

Widget getPage(int index) {
  switch (index) {
    case 0:
      return HomePage();
    case 1:
      return Scan_Pay();
    case 2:
      return Order();
    case 3:
      return Account();
    case 4:
      return Rewards();
    default:
      return Container();
  }
}
