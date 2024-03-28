import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HelpPolicies extends StatelessWidget {
  const HelpPolicies({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          head('Help & Policies'),
          RowProfile('Help', Icon(Icons.help_outline)),
          RowProfile('AppLication Terms', Icon(Icons.summarize_outlined)),
          RowProfile('Privacy Notice', Icon(Icons.private_connectivity_sharp)),
          RowProfile('Delete Account', Icon(Icons.arrow_forward_ios_rounded)),
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
