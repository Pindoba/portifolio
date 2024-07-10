import 'package:flutter/material.dart';
import 'package:portifolio/assents.dart';

class HelloPage extends StatelessWidget {
  final bool mobile;
  const HelloPage({super.key, required this.mobile});

  @override
  Widget build(BuildContext context) {
    double sizeImg = mobile == true ? 250 : 300;
    return Column(
      children: [
        const SizedBox(
          height: 120,
        ),
        Text('Hello World',
            style: TextStyle(fontSize: mobile == true ? 54 : 68)),
        SizedBox(height: sizeImg, width: sizeImg, child: Image.asset(Pictures.avatar)),
        const Padding(
          padding: EdgeInsets.only(right: 340),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Olá, meu nome é',
                style: TextStyle(fontSize: 26),
              ),
            ],
          ),
        ),
        Text(
          'Welton Moura',
          style: TextStyle(fontSize: mobile == true ? 54 : 68),
        ),
        Text('Dev backend - frontend')
      ],
    );
  }
}
