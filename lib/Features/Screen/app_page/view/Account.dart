import 'package:coffee_shop_01/Features/Screen/app_page/widget/Account_widget/AppBarAccont.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/Account_widget/HelpPolicies.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/Account_widget/NotificationPreferences.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/Account_widget/Profile.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/Account_widget/Security.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.theme.colorScheme.background,
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(8),
            child:  Column(
              children: [
                AppBarAccont(),
                Profile(),
                Security(),
                NotificationPreferences(),
                HelpPolicies(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
