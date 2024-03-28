import 'package:coffee_shop_01/Features/Screen/app_page/logic/order/Flavor/flavor_cubit.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/logic/order/Flavor/flavor_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBarChekOrderPage extends StatelessWidget {
  const AppBarChekOrderPage({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FlavorCubit, FlavorState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.all(8),
          width: 430,
          height: 61,
          child: Row(
            children: [
              Text(
                text,
                style: const TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 24,
                ),
              ),
              const Spacer(),
              Text(
                '\$${BlocProvider.of<FlavorCubit>(context).priceee.toStringAsFixed(2)}',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 24,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
