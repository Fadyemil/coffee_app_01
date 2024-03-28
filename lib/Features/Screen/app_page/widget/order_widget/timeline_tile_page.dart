// ignore_for_file: camel_case_types

import 'package:coffee_shop_01/Features/Screen/app_page/widget/app_widget/AppBarApp.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/app_widget/WidgetDrawer.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/order_widget/Button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:timeline_tile/timeline_tile.dart';

class timeline_tile extends StatelessWidget {
  const timeline_tile({super.key});

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
              SizedBox(height: 55),
              Center(
                child: Container(
                  padding: EdgeInsets.all(50),
                  width: 334,
                  height: 342,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tracking order',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 22,
                        ),
                      ),
                      Tracking_order(
                        isFirst: true,
                        isLast: false,
                        endChild: Padding(
                          padding: EdgeInsets.all(16),
                          child: Text('Order has been received'),
                        ),
                        isDone: true,
                      ),
                      Tracking_order(
                        isFirst: false,
                        isLast: false,
                        endChild: Padding(
                          padding: EdgeInsets.all(16),
                          child: Text('Prepare your order'),
                        ),
                        isDone: false,
                      ),
                      Tracking_order(
                        isFirst: false,
                        isLast: true,
                        endChild: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                              'Your order is complete!\nMeet us at the pickup area.'),
                        ),
                        isDone: false,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
              SizedBox(
                width: 320,
                height: 60,
                child: Button(
                  text: 'Pickup order',
                  ontap: () {},
                  color: Color(0xff8F8E8E),
                ),
              ),
              SizedBox(height: 25),
              Container(
                padding: EdgeInsets.all(16),
                width: 320,
                // height: 175,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Transaction ID'),
                        Spacer(),
                        Text('V278439380')
                      ],
                    ),
                    Row(
                      children: [
                        const Text('Date'),
                        const Spacer(),
                        Text(
                          DateFormat.yMEd().format(DateTime.now()),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Text('Time'),
                        const Spacer(),
                        Text(
                          DateFormat.Hm().format(DateTime.now()),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              SizedBox(
                width: 320,
                height: 60,
                child: Button(
                  text: 'Review Reciept',
                  ontap: () {},
                  color: Color.fromARGB(181, 143, 142, 142),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Tracking_order extends StatelessWidget {
  const Tracking_order(
      {super.key,
      required this.isFirst,
      required this.isLast,
      required this.endChild,
      required this.isDone});

  final bool isFirst;
  final bool isLast;
  final bool isDone;
  final Widget endChild;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 234,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        beforeLineStyle: LineStyle(
          color: isDone ? Color(0xff4E8D7C) : Color(0xffCACACA),
        ),
        indicatorStyle: IndicatorStyle(
          iconStyle: IconStyle(
              iconData: isLast ? Icons.check : Icons.safety_check,
              color: Colors.black),
          color: isDone ? Color(0xff4E8D7C) : Color(0xffCACACA),
          width: 40,
        ),
        endChild: endChild,
      ),
    );
  }
}
