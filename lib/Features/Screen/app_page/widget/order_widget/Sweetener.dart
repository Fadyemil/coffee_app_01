import 'package:coffee_shop_01/Features/Screen/app_page/logic/order/counter_cubit.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/logic/order/counter_state.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/widget/order_widget/InputField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class Sweetener extends StatelessWidget {
  const Sweetener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterState>(
      builder: (context, state) {
        return Container(
           padding: EdgeInsets.only(left: 18,right: 16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(18))),
          width: 405,
          height: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sweetener',
                style: TextStyle(
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                    fontSize: 16),
              ),
              Container(
                width: 365,
                height: 45,
                  decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 3),
                    const Text(
                      'Splenda® packet',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Container(
                      width: 175,
                      height: 35,
                      margin: EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .Operatin_Sweetener(
                                      operation: '-', buttonNumber: 1);
                            },
                            icon: Icon(
                              Icons.exposure_minus_1_outlined,
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            width: 36,
                            height: 24,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '${BlocProvider.of<CounterCubit>(context).Points}',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .Operatin_Sweetener(
                                      operation: '+', buttonNumber: 1);
                            },
                            icon: Icon(
                              Icons.plus_one_rounded,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class addSweentener extends StatefulWidget {
  const addSweentener({super.key});

  @override
  State<addSweentener> createState() => _addSweentenerState();
}

class _addSweentenerState extends State<addSweentener> {
  String _selectedCupSize = 'add Sweentener Packets';
  List<String> repeatList = ['add Sweentener Packets', 'not add Sweentener Packets', '😎', '☕'];

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
            title: 'Sweentener',
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