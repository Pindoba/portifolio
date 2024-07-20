import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:portifolio/assents.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      // color: Cores.base,
      child:  Center(child: Column(children: [
        Container(
          height: 500,
          child: LottieBuilder.asset(Pictures.work),
        ),
          Text('Em desenvolvimento...',
          style: TextStyle(fontSize: 28,color: Colors.white),),
      ],) ),
    );
  }
}