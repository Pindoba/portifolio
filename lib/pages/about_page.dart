import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portifolio/assents.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final correntWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(50),
      // color: Cores.base,
      child: Center(child:  Column(children: [
        Container(
          height: 500,
          child: LottieBuilder.asset(Pictures.work),
        ),
          Text('Em desenvolvimento...',
          style: TextStyle(fontSize: 28,color: Colors.white),),
      ],)),
    );
  }
}