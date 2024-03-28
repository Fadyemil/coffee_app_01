import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    required this.title,
    required this.hint,
    this.controller,
    this.widget,
  }) : super(key: key);

  final String title;
  final String hint;
  final TextEditingController? controller;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.brown,
              )),
          Container(
            padding: const EdgeInsets.only(left: 8),
            margin: const EdgeInsets.only(top: 15),
            height: 52,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: controller,
                    cursorColor:
                        Get.isDarkMode ? Colors.grey[100] : Colors.grey[700],
                    decoration: InputDecoration(
                      hintText: hint,
                      hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: context.theme.colorScheme.background,
                          width: 0,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: context.theme.colorScheme.background,
                        ),
                      ),
                    ),
                  ),
                ),
                widget ?? Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
