import 'package:coffee_shop_01/Features/Screen/app_page/logic/order/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  int Points = 0;

  CounterCubit() : super(counterPlus());

  void Operatin_Sweetener(
      {required String operation, required int buttonNumber}) {
    if (operation == "+") {
      Points += buttonNumber;
      emit(counterPlus());
    } else if (operation == "-") {
      Points -= buttonNumber;
      emit(counterMinus());
    }
  }

  // void restart() {
  //   teamAPoints = teamBPoints = 0;
  //   emit(counterTeamA());
  // }
}
