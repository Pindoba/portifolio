import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portifolio/assents.dart';

class AboutPage extends StatelessWidget {
  final bool mobile;
  const AboutPage({super.key, required this.mobile});

  @override
  Widget build(BuildContext context) {
    // final correntWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(50),
      // color: Cores.base,
      child: Center(
          child: Column(
        children: [
          mobile == false ?
           SizedBox(
            height: 500,
            child: LottieBuilder.asset(Pictures.work),
          )
          :
          const SizedBox(),
          const Text(
            'Em desenvolvimento...',
            style: TextStyle(fontSize: 28, color: Colors.white),
          ),
        ],
      )),
    );
  }
}
