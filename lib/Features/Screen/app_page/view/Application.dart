// ignore_for_file: file_names, non_constant_identifier_names

import 'package:coffee_shop_01/Features/Screen/app_page/widget/app_widget/AppBarApp.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/app_widget/BottomNavBar.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/app_widget/WidgetDrawer.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/app_widget/getPage.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/logic/App/app_cubit.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/logic/App/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
// import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

class ApplicationPage extends StatelessWidget {
  const ApplicationPage({super.key, this.x});

  final int? x;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          return Scaffold(
            drawer: WidgetDrawer(),
            backgroundColor: Get.isDarkMode
                ? context.theme.colorScheme.background
                : Color(0xfff6f2ed),
            appBar: AppBarApp(),
            body: getPage((state.index)),
            bottomNavigationBar: Container(
              width: 430,
              height: 83,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: BottomNavBar(
                selectedIndex: state.index,
                onItemTapped: (int x) {
                  BlocProvider.of<AppCubit>(context).chage(index: x);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
