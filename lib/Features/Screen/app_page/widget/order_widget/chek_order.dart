// ignore_for_file: must_be_immutable

import 'package:coffee_shop_01/Features/Screen/app_page/logic/order/Flavor/flavor_cubit.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/logic/order/Flavor/flavor_state.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/app_widget/AppBarApp.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/app_widget/WidgetDrawer.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/order_widget/AppBarChekOrderPage.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/order_widget/Button.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/order_widget/ThankYouPage.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/order_widget/detailsOrder.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/order_widget/payment_method.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/order_widget/price.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class chek_orderPage extends StatelessWidget {
  const chek_orderPage({super.key, required this.text});

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
          child: Column(
            children: [
              AppBarChekOrderPage(text: text),
              detailsOrder(),
              const SizedBox(height: 25),
              const Price(),
              const SizedBox(height: 25),
              const payment_method(
                text: 'As Soon as Possible',
                text1: 'Now - 10 Minutes',
              ),
              const payment_method(
                text: 'Later',
                text1: 'Schedule Pick Up',
              ),
              const payment_method(
                text: 'Payment Method',
                text1: 'Apple Pay',
                icon: Icon(Icons.payment_rounded),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DeliverAndPickUP(
                    color1: Colors.white,
                    color2: Colors.black,
                    text: 'Delivery',
                    image: 'PickIUP',
                  ),
                  DeliverAndPickUP(
                    color1: Color(0xff024f1c),
                    color2: Colors.white,
                    text: 'Pick Up',
                    image: 'Delivery',
                  ),
                ],
              ),
              SizedBox(height: 15),
              Container(
                width: double.infinity,
                height: 50,
                child: BlocBuilder<FlavorCubit, FlavorState>(
                  builder: (context, state) {
                    return Button(
                        text:
                            'CheckOut \$ ${BlocProvider.of<FlavorCubit>(context).priceee.toStringAsFixed(2)}',
                        ontap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ThankYouPage(),
                            ),
                          );
                        },
                        color: Colors.deepPurpleAccent);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DeliverAndPickUP extends StatelessWidget {
  const DeliverAndPickUP(
      {super.key,
      required this.color1,
      required this.color2,
      required this.text,
      required this.image});

  final Color color1;
  final Color color2;
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 175,
        height: 81,
        decoration: BoxDecoration(
          color: color1,
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'assets/image/$image.png',
              color: color2,
            ),
            Text(
              text,
              style: TextStyle(fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    );
  }
}
