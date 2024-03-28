// ignore_for_file: file_names, camel_case_types, must_be_immutable

import 'package:coffee_shop_01/Features/Screen/auth/auth_Widget/CustomInputField.dart';
import 'package:coffee_shop_01/Features/Screen/auth/auth_Widget/sign_in_widget/BuildBottom.dart';
import 'package:coffee_shop_01/Features/Screen/auth/auth_Widget/sign_in_widget/BuildText.dart';
import 'package:coffee_shop_01/Features/Screen/auth/auth_Widget/sign_in_widget/TextForget.dart';
import 'package:coffee_shop_01/Features/Screen/auth/logic/sign_in/sign_in_cubit.dart';
import 'package:coffee_shop_01/core/helper/show_snack_bar.dart';
import 'package:coffee_shop_01/core/routes/names.dart';
import 'package:coffee_shop_01/core/service/Global.dart';
import 'package:coffee_shop_01/core/values/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class bodySigInPage extends StatelessWidget {
  bodySigInPage({
    super.key,
  });

  bool isLoading = false;

  String? password = '';
  String? email = '';

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state is SignInSLoading) {
          EasyLoading.show(status: 'await...');
          EasyLoading.removeAllCallbacks();
          isLoading = true;
        } else if (state is SignInSuccess) {
          Global.storageService
                .setString(AppConstants.STORAGE_USER_TOKEN_KEY, '12345678');
          Navigator.of(context)
              .pushNamedAndRemoveUntil(AppRoutes.APPLICATION, (route) => false);
          showSnackBar(context, 'Welcome In Application');
          isLoading = false;
        } else if (state is SignInFailure) {
          showSnackBar(context, state.errMessage);
          isLoading = false;
        } else {}
      },
      child: ModalProgressHUD(
        inAsyncCall: isLoading,
        child: Container(
          padding: const EdgeInsets.only(left: 51, top: 31, right: 48),
          width: 430,
          height: 840,
          decoration: const BoxDecoration(
            color: Color(0xffFAFAFA),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    'Sign In',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  IconButton.filledTonal(
                    iconSize: 30,
                    onPressed: () async {
                      await BlocProvider.of<SignInCubit>(context)
                          .logInUserWithFaceBook();
                    },
                    icon: Icon(Icons.facebook_sharp),
                  ),
                  const SizedBox(width: 15),
                  IconButton.filledTonal(
                    iconSize: 30,
                    onPressed: () async {
                      await BlocProvider.of<SignInCubit>(context)
                          .logInUserWithGoogle();
                    },
                    icon: Image.asset('assets/image/google.png',
                        height: 30, width: 30),
                  ),
                ],
              ),
              const SizedBox(height: 17),
              const SizedBox(
                width: 291,
                height: 72,
                child: Text(
                  'It’s coffee time! Login and lets get all the coffee in the world! Or at least iced coffee. ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const SizedBox(height: 30, width: 295),
              CustomInputField(
                onChanged: (data) {
                  email = data;
                },
                suffixIcon: false,
                labelText: 'Email',
                hintText: 'Enter Email',
                TextType: 'Email',
              ),
              const SizedBox(height: 27),
              CustomInputField(
                onChanged: (data) {
                  password = data;
                },
                suffixIcon: true,
                labelText: 'Password',
                hintText: 'Enter Password',
                TextType: 'Password',
              ),
              const SizedBox(height: 27),
              const BuildText(),
              const SizedBox(height: 32),
              BuildBottom(
                text: 'LOGIN',
                onTap: () async {
                  EasyLoading.show();
                  try {
                    await BlocProvider.of<SignInCubit>(context)
                        .logInUser(email: email!, password: password!);
                  } catch (e) {
                    if (email == '') {
                      showSnackBar(context, 'Email is Empty');
                      isLoading = true;
                    } else if (password == '') {
                      showSnackBar(context, 'Password is Empty');
                      EasyLoading.dismiss();
                    } else {
                      showSnackBar(context, e.toString());
                      EasyLoading.dismiss(animation: false);
                    }
                  } finally {
                    EasyLoading.dismiss(); // Add this line to stop EasyLoading
                  }
                },
              ),
              const SizedBox(height: 26),
              const TextForget(),
              const SizedBox(height: 26),
              BuildBottom(
                text: 'CREATE NEW ACCOUNT',
                onTap: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      AppRoutes.REGISTER, (route) => false);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
