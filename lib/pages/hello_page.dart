import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portifolio/assents.dart';
import 'package:portifolio/widgets/text_widget.dart';

class HelloPage extends StatelessWidget {
  final bool mobile;
  const HelloPage({super.key, required this.mobile});

  @override
  Widget build(BuildContext context) {
    double sizeImg = mobile == true ? 250 : 300;
        final correntWidth = MediaQuery.of(context).size.width;
        final correntHeidth = MediaQuery.of(context).size.height;

    return 
    
    Center(
      child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Cores.laranjaClaro,
            ),
            height: mobile == false
                ? (correntHeidth * 80) / 100
                : (correntHeidth * 80) / 100,
            width: mobile == false
                ? (correntWidth * 60) / 100
                : (correntWidth * 95) / 100,
            child:

      
      Column(
        children: [
          const SizedBox(
            height: 120,
          ),
          TextWidget(color: Cores.grafite , text: 'Hello World', size:  mobile == true ? 54 : 68,).animate().scaleXY(begin: 0, end: 1,delay: 750.ms,duration: 400.ms),
          SizedBox(height: sizeImg, width: sizeImg, child: Image.asset(Pictures.avatar)).animate().scaleXY(begin: 0, end: 1,delay: 850.ms,duration: 400.ms),
           Padding(
            padding: EdgeInsets.only(right: 340),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(text: 'Olá, meu nome é', size:  mobile == true ? 22 : 26,).animate().scaleXY(begin: 0, end: 1,delay: 950.ms,duration: 400.ms),
              ],
            ),
          ),
          TextWidget(color: Cores.base, text: 'Welton Moura', size:  mobile == true ? 54 : 68,).animate().scaleXY(begin: 0, end: 1,delay: 1000.ms,duration: 400.ms),
       
          Text('Dev backend - frontend')
          ],
        ),
      )
      .animate()
      .moveX(
        begin: -2000,
        end: 0,
        duration: 450.ms,
        delay: 200.ms)
      ,
    );
  }
}
