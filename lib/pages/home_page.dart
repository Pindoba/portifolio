import 'package:flutter/material.dart';
import 'package:portifolio/pages/desktop.dart';
// import 'package:flutter/widgets.dart';
// import 'package:portifolio/menu.dart';
import 'package:portifolio/pages/mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final correntWidth = MediaQuery.of(context).size.width;
    // final correntHeight = MediaQuery.of(context).size.height;
    return correntWidth < 700 ? MobilePage() : DesktopPage();

    // Scaffold(
    //   appBar: AppBar(),
    //   drawer: Menu(),
    //   body: Container(
    //     child:
    //     Text(correntWidth.toString()),
    //   ),
    // );
  }
}
