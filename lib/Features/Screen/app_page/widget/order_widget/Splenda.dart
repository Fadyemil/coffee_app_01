import 'package:coffee_shop_01/Features/Screen/app_page/logic/order/Flavor/flavor_cubit.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/logic/order/Flavor/flavor_state.dart';
// import 'package:coffee_shop_01/Features/Screen/app_page/logic/order/counter_cubit.dart';
// import 'package:coffee_shop_01/Features/Screen/app_page/logic/order/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Splenda extends StatelessWidget {
  const Splenda({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FlavorCubit, FlavorState>(
      builder: (context, state) {
        return Container(
          padding: EdgeInsets.only(left: 18, right: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(18),
            ),
          ),
          width: 405,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Flavor',
                style: TextStyle(
                    color: Colors.brown,
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
                      'Splenda Packet',
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
                              BlocProvider.of<FlavorCubit>(context)
                                  .Operatin_FlavorState(
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
                                '${BlocProvider.of<FlavorCubit>(context).Points}',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              BlocProvider.of<FlavorCubit>(context)
                                  .Operatin_FlavorState(
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
