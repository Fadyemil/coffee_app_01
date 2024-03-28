import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Security extends StatefulWidget {
  const Security({super.key});

  @override
  State<Security> createState() => _SecurityState();
}

class _SecurityState extends State<Security> {
  late bool status1 = false;
  late bool status2 = false;
  late bool status3 = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          head('Security'),
          Security_item('2- factor authentication', 1),
          Security_item('Face ID', 2),
          Security_item('Passcode Lock', 3),
        ],
      ),
    );
  }

  Container Security_item(String text1, int index) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: double.infinity,
      height: 45,
      child: Row(
        children: [
          Text(
            text1,
            style: TextStyle(
              color: Get.isDarkMode ? Colors.white : Colors.black,
              fontSize: 16,
            ),
          ),
          Spacer(),
          Switch(
            activeColor: Get.isDarkMode ? Colors.white : Colors.black,
            inactiveThumbColor: Colors.white,
            inactiveTrackColor: Colors.green,
            value: (index == 1) ? status1 : status3,
            onChanged: (val) {
              setState(
                () {
                  if (index == 1) {
                    status1 = val;
                  }
                  if (index == 2) {
                    status2 = val;
                  }
                  if (index == 3) {
                    status3 = val;
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }

  Text head(String text1) {
    return Text(
      text1,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w900,
        color: Get.isDarkMode ? Colors.white : Colors.black,
      ),
    );
  }
}
