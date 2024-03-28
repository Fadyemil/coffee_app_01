import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

class BuildCounterBONUS extends StatelessWidget {
  const BuildCounterBONUS({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(123, 158, 158, 158).withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            // offset: Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      width: 380,
      height: 210,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 9, right: 12, top: 15),
                width: 380,
                height: 70,
                color: const Color(0xff4E8D7C),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'BONUS REWARDS',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Coffee Delivered to your house',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 9, right: 8, top: 15),
                width: 380,
                height: 138,
                color: Get.isDarkMode ? Colors.black26 : Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Order 2 bags of coffee and get bonus stars!',
                      style: TextStyle(
                        color: Get.isDarkMode?Colors.white : Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                     SizedBox(
                      width: 237,
                      height: 55,
                      child: Text(
                        'Order any of our coffee and get an additional 30 Stars! Now that’s how you get free coffee!',
                        style: TextStyle(
                          color:  Get.isDarkMode?Colors.white : Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        const Spacer(),
                        Container(
                          width: 90,
                          height: 35,
                          decoration: BoxDecoration(
                              color: Color(0xff4B2C20),
                              borderRadius: BorderRadius.circular(20)),
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Shop Now',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            // alignment: Alignment.topRight,
            width: 96,
            height: 116,
            child: Image.asset('assets/image/image 3.png'),
          )
        ],
      ),
    );
  }
}
