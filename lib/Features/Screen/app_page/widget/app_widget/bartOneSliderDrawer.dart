// ignore_for_file: non_constant_identifier_names

import 'package:coffee_shop_01/Features/Screen/app_page/widget/app_widget/getPage.dart';
import 'package:coffee_shop_01/core/routes/names.dart';
import 'package:coffee_shop_01/core/service/Global.dart';
import 'package:coffee_shop_01/core/values/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class bartOneSliderDrawer extends StatelessWidget {
  const bartOneSliderDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      color: Get.isDarkMode ? Colors.black26 : Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          UserAccountsDrawerHeader(
            arrowColor: Get.isDarkMode? Colors.black26:Colors.white,
            accountName: Text(
              'fady',
              style: TextStyle(
                  color: Get.isDarkMode ? Colors.black : Colors.white),
            ),
            accountEmail: Text(
              'Fady46t45f.Gmail.com',
              style: TextStyle(
                  color: Get.isDarkMode ? Colors.black : Colors.white),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                    'assets/image/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvMzY2LW1ja2luc2V5LTIxYTc3MzYtZm9uLWwtam9iNjU1LnBuZw.webp'),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.favorite_border),
            title: const Text('My Favorite items'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.location_on_outlined),
            title: const Text('My Saved Stores'),
            onTap: () {},
          ),
          ListTile(
            leading: Image.asset('assets/image/Home.png'),
            title: const Text('Home'),
            onTap: () {
              getPage(0);
            },
          ),
          ListTile(
            leading: Image.asset('assets/image/Scan_Pay.png'),
            title: const Text('Scan_Pay'),
            onTap: () {
              getPage(1);
            },
          ),
          ListTile(
            leading: Image.asset('assets/image/Order.png'),
            title: const Text('Order'),
            onTap: () {
              getPage(2);
            },
          ),
          ListTile(
            leading: Image.asset('assets/image/Account.png'),
            title: const Text('Account'),
            onTap: () {
              getPage(3);
            },
          ),
          ListTile(
            leading: Image.asset('assets/image/Rewards.png'),
            title: const Text('Rewards'),
            onTap: () {
              getPage(4);
            },
          ),
          ListTile(
            leading: const Icon(Icons.line_weight_sharp),
            title: const Text('Order History'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app_outlined),
            title: const Text('Exit'),
            onTap: () {
              SignOUt(context);
            },
          ),
          const Spacer(),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Follow us on Social'),
              Icon(Icons.tiktok_sharp),
              Icon(Icons.facebook_rounded),
              Icon(Icons.wechat_sharp)
            ],
          )
        ],
      ),
    );
  }

  void SignOUt(BuildContext context) {
    Global.storageService.remove(AppConstants.STORAGE_USER_TOKEN_KEY);
    Navigator.of(context)
        .pushNamedAndRemoveUntil(AppRoutes.SIGN_IN, (route) => false);
  }
}
