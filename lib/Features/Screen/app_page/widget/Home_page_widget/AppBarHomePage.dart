import 'package:flutter/material.dart';

class AppBarHomePage extends StatelessWidget {
  const AppBarHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 94,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 241,
                height: 30,
                child: Text(
                  'Good Morning!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
              SizedBox(
                width: 215,
                height: 30,
                child: Text(
                  'Lets get this Coffee ☕️ ',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          Spacer(),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(bottom: 35),
              width: 202,
              height: 82,
              child: Image.asset('assets/image/PNG image 1.png'),
            ),
          )
        ],
      ),
    );
  }
}
