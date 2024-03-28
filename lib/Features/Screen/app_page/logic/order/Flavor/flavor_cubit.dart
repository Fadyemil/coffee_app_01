import 'package:coffee_shop_01/Features/Screen/app_page/logic/order/Flavor/flavor_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FlavorCubit extends Cubit<FlavorState> {
  int Points = 0;
  int Points1 = 1;

  FlavorCubit() : super(counterPlus_Flavor());

  double priceee = 6.99;

  void Operatin_FlavorState(
      {required String operation, required int buttonNumber}) {
    if (operation == "+") {
      Points += buttonNumber;
      emit(counterPlus_Flavor());
    } else if (operation == "-") {
      Points -= buttonNumber;
      emit(counterMinus_Flavor());
    }
  }
  void Price(
      {required String operation, required int buttonNumber,required double price}) {
    if (operation == "+") {
      Points1 += buttonNumber;
      priceee += price;
      emit(counterPlus_Flavor());
    } else if (operation == "-") {
      Points1 -= buttonNumber;
      priceee -= price;
      emit(counterMinus_Flavor());
    }
  }

  // void Price({required double price}) {
  //   priceee += price;
  // }
}
