import 'package:coffee_shop_01/Features/Screen/auth/auth_Widget/sign_in_widget/ShewImage.dart';
import 'package:coffee_shop_01/Features/Screen/auth/auth_Widget/sign_in_widget/appBarSignInpage.dart';
import 'package:coffee_shop_01/Features/Screen/auth/auth_Widget/sign_in_widget/bodySignPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xffF8EBD8),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const appBarSignInpage(),
                const ShewImage(),
                bodySigInPage(),
              ],
            ),
          )),
    );
  }
}
