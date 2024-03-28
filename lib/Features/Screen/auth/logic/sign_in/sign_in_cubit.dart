// ignore_for_file: unused_local_variable, prefer_interpolation_to_compose_strings, depend_on_referenced_packages, non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:meta/meta.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(SignInInitial());

  Future<void> logInUser(
      {required String email, required String password}) async {
    EasyLoading.show(); // Show loading indicator
    emit(SignInSLoading());
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      emit(SignInSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(SignInFailure(errMessage: 'No user found for that email.'));
      } else if (e.code == 'wrong-password') {
        emit(
            SignInFailure(errMessage: 'Wrong password provided for that user'));
      } else {
        emit(SignInFailure(errMessage: '${e.code} - try again'));
      }
    } catch (e) {
      emit(SignInFailure(errMessage: 'error 404'));
    } finally {
      EasyLoading.dismiss(); // Dismiss loading indicator
    }
  }

  Future<UserCredential> logInUserWithFaceBook() async {
    EasyLoading.show(); // Show loading indicator
    emit(SignInSLoading());
    try {
      final LoginResult loginResult = await FacebookAuth.instance.login();

      if (loginResult.status == LoginStatus.success) {
        final AccessToken accessToken = loginResult.accessToken!;
        final OAuthCredential credential =
            FacebookAuthProvider.credential(accessToken.token);
        return await FirebaseAuth.instance.signInWithCredential(credential);
      } else {
        throw FirebaseAuthException(
          code: 'Facebook Login Failed',
          message: 'The Facebook login was not successful.',
        );
      }
    } on FirebaseAuthException catch (e) {
      // Handle Firebase authentication exceptions
      print('Firebase Auth Exception: ${e.message}');
      throw e; // rethrow the exception
    } catch (e) {
      // Handle other exceptions
      print('Other Exception: $e');
      throw e; // rethrow the exception
    } finally {
      EasyLoading.dismiss(); // Dismiss loading indicator
    }
  }

  Future<UserCredential> logInUserWithGoogle() async {
    EasyLoading.show(); // Show loading indicator
    emit(SignInSLoading());
    try {
      final LoginResult loginResult = await FacebookAuth.instance.login();

      if (loginResult.status == LoginStatus.success) {
        final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

        // Obtain the auth details from the request
        final GoogleSignInAuthentication? googleAuth =
            await googleUser?.authentication;

        // Create a new credential
        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken,
          idToken: googleAuth?.idToken,
        );

        // Once signed in, return the UserCredential
        return await FirebaseAuth.instance.signInWithCredential(credential);
      } else {
        throw FirebaseAuthException(
          code: 'Facebook Login Failed',
          message: 'The Facebook login was not successful.',
        );
      }
    } on FirebaseAuthException catch (e) {
      // Handle Firebase authentication exceptions
      print('Firebase Auth Exception: ${e.message}');
      throw e; // rethrow the exception
    } catch (e) {
      // Handle other exceptions
      print('Other Exception: $e');
      throw e; // rethrow the exception
    } finally {
      EasyLoading.dismiss(); // Dismiss loading indicator
    }
  }

  
}
