import 'package:coffee_shop_01/Features/Screen/app_page/logic/App/app_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppState(index:0));

  void chage({required int index}) {
    emit(AppInitial(index: index));
  }
}
