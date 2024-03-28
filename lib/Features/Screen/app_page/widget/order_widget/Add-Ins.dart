import 'package:coffee_shop_01/Features/Screen/app_page/widget/order_widget/InputField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Add_Ins extends StatefulWidget {
  const Add_Ins({super.key});

  @override
  State<Add_Ins> createState() => _Add_InsState();
}

class _Add_InsState extends State<Add_Ins> {
  String _selectedAddIns = 'Normal Ice';
  List<String> repeatList = [
    '69.0 Total Ice',
    '41.5 Sugar Ice',
    '23.1 fast Ice',
    '12.5 satureted Ice'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 22, right: 12),
      width: 405,
      height: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InputField(
            title: 'Add-Ins',
            hint: _selectedAddIns,
            widget: Row(
              children: [
                DropdownButton(
                  dropdownColor: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(10),
                  items: repeatList
                      .map<DropdownMenuItem<String>>(
                        (String value) => DropdownMenuItem<String>(
                          value: value,
                          child: Text(value,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Get.isDarkMode
                                    ? Colors.white
                                    : Colors.black,
                              )),
                        ),
                      )
                      .toList(),
                  icon: const Icon(Icons.arrow_drop_down_circle_sharp,
                      color: Color(0xff4B2C20)),
                  iconSize: 32,
                  elevation: 4,
                  underline: Container(height: 0),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedAddIns = newValue!;
                    });
                  },
                ),
                const SizedBox(width: 6),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
