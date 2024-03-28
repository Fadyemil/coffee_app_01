// ignore_for_file: camel_case_types, must_be_immutable, avoid_print, prefer_const_constructors

import 'package:coffee_shop_01/Features/Screen/splash_page/splash_widget/OnePage.dart';
import 'package:coffee_shop_01/Features/Screen/splash_page/splash_widget/ThereePage.dart';
// import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class Splash_page extends StatelessWidget {
  Splash_page({super.key});

  PageController pageController = PageController(initialPage: 0);

  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          height: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
          child: Stack(
            children: [
              PageView(
                controller: pageController,
                children: [
                  OnePage(
                    Index: 1,
                    pageController: pageController,
                  ),
                  ThreePage(
                    Head: 'Choose and customize your\n drinks with simplicity',
                    sub:
                        'You want your drink and you want it your way so be bold and customize the way that makes you the happiest!',
                    image: 'onboarding images',
                    Loading: 'Coffee bean loading',
                    Index: 2,
                    pageController: pageController,
                  ),
                  ThreePage(
                    Head: 'No time to waste when you need your coffee',
                    sub:
                        'We’ve crafted a quick and easy way for you to order your favorite coffee or treats thats fast!',
                    image: 'onboarding images (1)',
                    Loading: 'Coffee bean loading (1)',
                    Index: 3,
                    pageController: pageController,
                  ),
                  ThreePage(
                    Head: 'Who doesn’t love rewards? We LOVE rewards!',
                    sub:
                        "If you're like us you love getting freebies and rewards! That's why we have the best reward program in the coffee game!",
                    image: 'onboarding images (2)',
                    Loading: 'Coffee bean loading (3)',
                    Index: 4,
                    pageController: pageController,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
