// import 'package:coffee_shop/core/service/Global.dart';
// import 'package:coffee_shop/core/values/constant.dart';
// import 'package:coffee_shop/Features/Screen/auth/view/Sign_in.dart';
// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:coffee_shop_01/core/routes/names.dart';
import 'package:coffee_shop_01/core/service/Global.dart';
import 'package:coffee_shop_01/core/values/constant.dart';
import 'package:flutter/material.dart';

class ThreePage extends StatelessWidget {
  const ThreePage({
    super.key,
    required this.Head,
    required this.sub,
    required this.image,
    required this.Loading,
    required this.Index,
    required this.pageController,
  });

  final String Head;
  final String sub;
  final String image;
  final String Loading;
  final int Index;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF8EBD8),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 4.0),
            child: IconButton(
              onPressed: () {
                Global.storageService
                    .setBool(AppConstants.STORAGE_DEVICE_OPEN_FIRST_TIME, true);
                Navigator.of(context).pushNamedAndRemoveUntil(
                    AppRoutes.SIGN_IN, (route) => false);
              },
              icon: Text(
                'Skip',
              ),
            ),
          )
        ],
      ),
      backgroundColor: const Color(0xffF8EBD8),
      body: Column(
        children: [
          const SizedBox(
            width: 415,
            height: 84,
          ),
          Container(
            width: 304,
            height: 240,
            child: Image.asset('assets/image/$image.png'),
          ),
          const SizedBox(
            width: 430,
            height: 100,
          ),
          HeaderText(
            Header: '$Head',
          ),
          const SizedBox(
            width: 422,
            height: 28,
          ),
          SubText(
            Sub: '$sub',
          ),
          const SizedBox(
            width: 431,
            height: 107,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 19),
                child: Container(
                  width: 103.08,
                  height: 40.03,
                  child: Image.asset('assets/image/$Loading.png'),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 23),
                child: Container(
                  width: 155,
                  height: 60,
                  decoration: BoxDecoration(
                      color: const Color(0xff4B2C20),
                      borderRadius: BorderRadius.circular(18)),
                  child: IconButton(
                    onPressed: () {
                      if (Index < 4) {
                        pageController.animateToPage(Index,
                            duration: const Duration(seconds: 1),
                            curve: Curves.easeIn);
                      } else {
                        Global.storageService.setBool(
                            AppConstants.STORAGE_DEVICE_OPEN_FIRST_TIME, true);
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            AppRoutes.SIGN_IN, (route) => false);
                      }
                    },
                    icon: const Text(
                      'Next',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class SubText extends StatelessWidget {
  const SubText({
    super.key,
    required this.Sub,
  });

  final String Sub;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 430,
      height: 80,
      child: Padding(
        padding: const EdgeInsets.only(left: 74, right: 74),
        child: Text(
          textAlign: TextAlign.left,
          '$Sub',
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

class HeaderText extends StatelessWidget {
  const HeaderText({
    super.key,
    required this.Header,
  });

  final String Header;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 430,
      height: 60,
      child: Padding(
        padding: const EdgeInsets.only(left: 74, right: 74),
        child: Text(
          textAlign: TextAlign.left,
          '$Header',
          style: const TextStyle(
            fontWeight: FontWeight.w800,
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
