import 'package:coffee_shop_01/Features/Screen/app_page/widget/app_widget/AppBarApp.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/app_widget/WidgetDrawer.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/order_widget/AppBarOrderPage.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/order_widget/Button.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/order_widget/CupSize.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/order_widget/Espress.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/order_widget/Flavors_com.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/order_widget/Sweentener.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/order_widget/add_ins_com.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/order_widget/chek_order.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Done_Customize_page extends StatelessWidget {
  const Done_Customize_page(
      {super.key, required this.image, required this.text});

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
                    "Done customizing",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  width: 405,
                  // height: 295,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  child: const CupSize(),
                ),
                SizedBox(height: 8),
                Flavors_com(),
                SizedBox(height: 8),
                Sweentener(),
                SizedBox(height: 8),
                add_ins_com(),
                SizedBox(height: 8),
                Espress(),
                SizedBox(height: 8),
                Container(
                  width: double.infinity,
                  height: 55,
                  child: Button(
                    text: 'Done customizing',
                    ontap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => chek_orderPage(
                            text: 'Iced coffee',
                          ),
                        ),
                      );
                    },
                    color: const Color(0xff4e8d7c),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
