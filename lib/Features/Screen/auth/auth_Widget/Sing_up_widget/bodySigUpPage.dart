// ignore_for_file: must_be_immutable, dead_code

import 'package:coffee_shop_01/Features/Screen/auth/auth_Widget/CustomInputField.dart';
import 'package:coffee_shop_01/Features/Screen/auth/auth_Widget/sign_in_widget/BuildBottom.dart';
import 'package:coffee_shop_01/Features/Screen/auth/auth_Widget/sign_in_widget/BuildText.dart';
import 'package:coffee_shop_01/Features/Screen/auth/logic/sign_up/sign_up_cubit.dart';
import 'package:coffee_shop_01/core/helper/show_snack_bar.dart';
import 'package:coffee_shop_01/core/routes/names.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class bodySigUpPage extends StatelessWidget {
  bodySigUpPage({
    super.key,
  });
  bool isLoading = false;
  String? password = '';
  String? ConfrontPassword = '';
  String? email = '';
  String? user = '';

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpSLoading) {
          EasyLoading.show(status: 'await...');
          EasyLoading.removeAllCallbacks();
          isLoading = true;
        } else if (state is SignUpSuccess) {
          Navigator.of(context)
              .pushNamedAndRemoveUntil(AppRoutes.SIGN_IN, (route) => false);
          showSnackBar(context, 'Go to LOGIN In Page');
          isLoading = false;
        } else if (state is SignUpFailure) {
          showSnackBar(context, state.errMessage);
          isLoading = false;
        } else {}
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: isLoading,
          child: Container(
            padding: const EdgeInsets.only(left: 51, top: 31, right: 48),
            width: 430,
            height: 950,
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
                const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 17),
                const SizedBox(
                  width: 291,
                  height: 72,
                  child: Text(
                    'We are so excited you’re ready to become apart of our coffee network! don’t forget  check out your perks!',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                  width: 295,
                ),
                CustomInputField(
                  onChanged: (data) {
                    user = data;
                  },
                  suffixIcon: false,
                  labelText: 'User name',
                  hintText: 'Enter User Name',
                  TextType: 'name',
                ),
                const SizedBox(height: 27),
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
                CustomInputField(
                  onChanged: (data) {
                    ConfrontPassword = data;
                  },
                  suffixIcon: true,
                  labelText: 'Confront Password',
                  hintText: 'Enter Confront Password',
                  TextType: 'Password',
                ),
                const SizedBox(height: 27),
                const BuildText(),
                const SizedBox(height: 32),
                BuildBottom(
                  text: 'REGISTER',
                  onTap: () async {
                    EasyLoading.show();
                    try {
                      if (password == ConfrontPassword) {
                        await BlocProvider.of<SignUpCubit>(context)
                            .logUpUser(email: email!, password: password!);
                      }
                      {
                        if (user == '') {
                          showSnackBar(context, 'user name is Empty');
                        } else if (email == '') {
                          showSnackBar(context, 'Email is Empty');
                        } else if (password != ConfrontPassword ||
                            password == '' ||
                            ConfrontPassword == '') {
                          showSnackBar(context,
                              'Retype the password and confirm the password');
                        }
                      }
                    } finally {
                      EasyLoading
                          .dismiss(); // Add this line to stop EasyLoading
                    }
                  },
                ),
                const SizedBox(height: 26),
                const Center(
                  child: Text(
                    'Dont have an account ?',
                    style: TextStyle(
                      color: Color(0xff4E8D7C),
                    ),
                  ),
                ),
                const SizedBox(height: 26),
                BuildBottom(
                  text: 'SIGN IN',
                  onTap: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        AppRoutes.SIGN_IN, (route) => false);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
