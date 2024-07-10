import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      color: Colors.brown,
      child: Center(child: Text('Sobre eu'),),
    );
  }
}