import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      color: Color.fromARGB(255, 65, 206, 231),
      child: const Center(child: Text('Contato'),),
    );
  }
}