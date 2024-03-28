// import 'package:coffee_shop_01/Features/Screen/app_page/widget/app_widget/ZoomDrawer.dart';
import 'package:coffee_shop_01/core/services/theme_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

AppBar AppBarApp() {
  return AppBar(
    title: Center(
      child: SizedBox(
        width: 30,
        height: 47,
        child: Image.asset('assets/image/Frame.png'),
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.shopping_bag_outlined),
      ),
      IconButton(
        onPressed: () {
          ThemeServices().switchTheme();
        },
        icon: Icon(
          Get.isDarkMode ? Icons.wb_sunny_outlined : Icons.nightlight_outlined,
        ),
      ),
    ],
  );
}
