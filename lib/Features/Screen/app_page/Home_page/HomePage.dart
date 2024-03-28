import 'package:coffee_shop_01/Features/Screen/app_page/widget/Home_page_widget/AppBarHomePage.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/Home_page_widget/BuildCounterBONUS.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/Home_page_widget/BuildElementListView.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/Home_page_widget/delaisGroub.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.only(left: 19, top: 45, right: 27),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AppBarHomePage(),
            BuildCounterBONUS(),
            SizedBox(width: 430, height: 40),
            delaisGroub(text1: 'Food'),
            SizedBox(height: 15),
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

