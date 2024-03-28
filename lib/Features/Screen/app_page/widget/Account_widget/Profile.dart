import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          head('Profile'),
          RowProfile('Presonal info', Icon(Icons.info_outline)),
          RowProfile('Cards & Payments', Icon(Icons.payment)),
          RowProfile('Transaction History', Icon(Icons.history)),
          RowProfile('Privacy & Data', Icon(Icons.back_hand_outlined)),
          RowProfile('Account ID', Icon(Icons.medical_information_outlined)),
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

  Container RowProfile(String text1, Icon icon) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            text1,
            style: TextStyle(
              fontSize: 14,
              color: Get.isDarkMode ? Colors.white : Colors.black,
            ),
          ),
          Spacer(),
          icon
        ],
      ),
    );
  }
}
