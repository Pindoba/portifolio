import 'package:flutter/material.dart';
import 'package:portifolio/assents.dart';
import 'package:portifolio/widgets/text_widget.dart';

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
        TextWidget(text: 'Hello World', size:  mobile == true ? 54 : 68,),
        SizedBox(height: sizeImg, width: sizeImg, child: Image.asset(Pictures.avatar)),
         Padding(
          padding: EdgeInsets.only(right: 340),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextWidget(text: 'Olá, meu nome é', size:  mobile == true ? 22 : 26,),
            ],
          ),
        ),
        TextWidget(text: 'Welton Moura', size:  mobile == true ? 54 : 68,),
 
        Text('Dev backend - frontend')
      ],
    );
  }
}
