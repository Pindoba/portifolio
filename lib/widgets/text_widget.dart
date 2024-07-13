import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color? color;
  final double? size;
  final int? scale;
  final TextAlign? align;
  const TextWidget({super.key, required this.text, this.color, this.size, this.scale, this.align});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        softWrap: true,
        maxLines: 10,
        style: TextStyle(
          color: color?? Colors.black,
          fontSize: size?? 18,
          overflow: TextOverflow.clip,
          
        ),
        textAlign: align?? TextAlign.left,
        
        ),
    );
  }
}
