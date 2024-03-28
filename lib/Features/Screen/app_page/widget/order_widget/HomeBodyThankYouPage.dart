// ignore_for_file: must_be_immutable

// import 'package:coffee_shop_01/Features/Screen/app_page/widget/order_widget/detailsOrder.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/logic/order/Flavor/flavor_cubit.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/logic/order/Flavor/flavor_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class HomeBodyThankYouPage extends StatelessWidget {
  const HomeBodyThankYouPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: 320,
      height: 492,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.black,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Row(
            children: [Text('Transaction ID'), Spacer(), Text('V278439380')],
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
          Divider(
            height: 1,
            color: Colors.black,
            thickness: 1,
          ),
          SizedBox(height: 15),
          Text(
            'Item',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          Text(
            'Iced Coffee',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          details(),
          Text(
            'Payment Summary',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          Row(
            children: [
              const Text('Price'),
              const Spacer(),
              BlocBuilder<FlavorCubit, FlavorState>(
                builder: (context, state) {
                  return Text(
                    ' \$ ${BlocProvider.of<FlavorCubit>(context).priceee.toStringAsFixed(2)}',
                  );
                },
              )
            ],
          ),
          const Row(
            children: [
              Text('Reward Points'),
              Spacer(),
              Text(
                '+ 80',
              )
            ],
          ),
          Row(
            children: [
              const Text('Total'),
              const Spacer(),
              BlocBuilder<FlavorCubit, FlavorState>(
                builder: (context, state) {
                  return Text(
                    ' \$ ${BlocProvider.of<FlavorCubit>(context).priceee.toStringAsFixed(2)}',
                  );
                },
              )
            ],
          ),
          const Row(
            children: [
              Text('Payment Method'),
              Spacer(),
              Text(
                'Rewards',
              )
            ],
          ),
          Row(
            children: [
              Text('Schedule Pick Up'),
              Spacer(),
              Text(
                DateFormat.Hm().format(
                  DateTime.now(),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class details extends StatelessWidget {
  details({super.key});

  List<String> additionalDetails = [
    'XLarge, 3 Splenda',
    '6 Pump (s) Pumpkin spice',
    '3 Shot (s) Espresso',
    'Pumpkin Spice Toppings',
    'Oatmilk',
    'Normal Ice ',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 430,
      padding: EdgeInsets.only(right: 16, left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (var detail in additionalDetails) Text(detail),
          const SizedBox(height: 33),
        ],
      ),
    );
  }
}
