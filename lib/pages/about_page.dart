import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final correntWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(50),
      color: Colors.brown,
      child: Center(child: Container(
        color: Colors.red,
        height: ((correntWidth * 80) / 100),
        child: Text('Sobre eu')),),
    );
  }
}