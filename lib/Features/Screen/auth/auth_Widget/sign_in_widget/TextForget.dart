import 'package:flutter/material.dart';

class TextForget extends StatelessWidget {
  const TextForget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Forget Password ?',
              style: TextStyle(color: Color(0xff4E8D7C)),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Reset here',
              ),
            )
          ],
        ),
        Text(
          'Dont have an account ?',
          style: TextStyle(
            color: Color(0xff4E8D7C),
          ),
        )
      ],
    );
  }
}
