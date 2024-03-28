import 'package:coffee_shop_01/Features/Screen/app_page/widget/app_widget/AppBarApp.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/app_widget/WidgetDrawer.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/order_widget/Bar.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/order_widget/Button.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/order_widget/HomeBodyThankYouPage.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/order_widget/timeline_tile_page.dart';
// import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
// import 'package:intl/intl.dart';

class ThankYouPage extends StatelessWidget {
  const ThankYouPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const WidgetDrawer(),
        backgroundColor: Get.isDarkMode
            ? context.theme.colorScheme.background
            : const Color(0xfff6f2ed),
        appBar: AppBarApp(),
        body: Center(
          child: Container(
            width: 367,
            height: 600,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 15),
                const Bar(),
                const HomeBodyThankYouPage(),
                SizedBox(height: 7),
                Expanded(
                  child: SizedBox(
                    height: 55,
                    width: 215,
                    child: Button(
                        text: 'Track Order',
                        ontap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => timeline_tile(),
                            ),
                          );
                        },
                        color: Colors.blueAccent),
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
