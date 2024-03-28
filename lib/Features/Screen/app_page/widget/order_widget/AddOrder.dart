import 'package:coffee_shop_01/Features/Screen/app_page/widget/app_widget/AppBarApp.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/app_widget/WidgetDrawer.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/order_widget/Add-Ins.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/order_widget/AppBarOrderPage.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/order_widget/Button.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/order_widget/Creamer.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/order_widget/CupSize.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/order_widget/Done_CustomizePage.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/order_widget/Flavor.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/order_widget/Sweetener.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class addOrder extends StatelessWidget {
  const addOrder({super.key, required this.image, required this.text});

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const WidgetDrawer(),
        backgroundColor: Get.isDarkMode
            ? context.theme.colorScheme.background
            : const Color(0xfff6f2ed),
        appBar: AppBarApp(),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                AppBarOrderPage(image: image, text: text),
                Container(
                  padding: EdgeInsets.all(16),
                  width: 399,
                  height: 51,
                  child: const Text(
                    "What's included",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                const CupSize(),
                const Add_Ins(),
                const Sweetener(),
                const Flavor(),
                const Creamer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Button(
                        text: 'Add To Cart \$6.99 ',
                        ontap: () {},
                        color: const Color(0xff4b2c20),
                      ),
                      const SizedBox(width: 8),
                      Button(
                        text: ' Customize ',
                        ontap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Done_Customize_page(
                                image: 'assets/drink/Iced coffee.png',
                                text: 'Iced coffee',
                              ),
                            ),
                          );
                        },
                        color: const Color(0xff4e8d7c),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
