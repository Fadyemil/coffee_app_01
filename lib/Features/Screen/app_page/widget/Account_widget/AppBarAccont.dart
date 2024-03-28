import 'package:flutter/material.dart';

class AppBarAccont extends StatelessWidget {
  const AppBarAccont({super.key});

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
                  'ACCOUNT',
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
                  'Welocm Fady',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
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
