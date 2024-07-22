import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:portifolio/assents.dart';

class ContactPage extends StatelessWidget {
  final bool mobile;
  const ContactPage({super.key, required this.mobile});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      // color: Cores.base,
      child: Center(
          child: Column(
        children: [
          mobile == false ?
          Container(
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
