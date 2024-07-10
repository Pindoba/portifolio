import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blue,
      child: Column(
        children: [Text('data')]));
  }
}