import 'package:coffee_shop_01/Features/Screen/app_page/widget/order_widget/InputField.dart';
import 'package:flutter/material.dart';

class CupSize extends StatefulWidget {
  const CupSize({super.key});

  @override
  State<CupSize> createState() => _CupSizeState();
}

class _CupSizeState extends State<CupSize> {
  String _selectedCupSize = 'Small';
  List<String> repeatList = ['Extra Small', 'Small', 'Medium', 'Large'];

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
            title: 'Cup Size',
            hint: _selectedCupSize,
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
                              style: const TextStyle(
                                color: Colors.white,
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
                      _selectedCupSize = newValue!;
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
