// ignore_for_file: unused_local_variable, avoid_print, prefer_interpolation_to_compose_strings

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:meta/meta.dart';
part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());

  Future<void> logUpUser(
      {required String email, required String password}) async {
         EasyLoading.show(); 
    emit(SignUpSLoading());
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      emit(SignUpSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(SignUpFailure(errMessage: 'weak-password'));
      } else if (e.code == 'email-already-in-use') {
        emit(SignUpFailure(errMessage: 'email-already-in-use'));
      } else {
        emit(SignUpFailure(errMessage: e.code+" try again"));
      }
    } catch (e) {
      emit(SignUpFailure(errMessage: 'error 404'));
    }finally {
      EasyLoading.dismiss(); // Dismiss loading indicator
    }
  }
}
