import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portifolio/model/project.dart';
import 'package:portifolio/widgets/text_widget.dart';

class ProjectWidget extends StatelessWidget {
  final Project project;
  const ProjectWidget({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    final correntWidth = MediaQuery.of(context).size.width;
    return Container(
      // constraints: BoxConstraints.expand(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(8),
            width: (correntWidth * 35) / 100,
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(text: project.titulo, size: 28)
                .animate()
                .fadeIn(delay: 600.ms),
                Image.network(project.midias[0])
                .animate()
                .scaleXY(
                  begin: 0,
                  end: 1,
                  duration: 300.ms,
                  delay: 350.ms)

                // TextWidget(text: project.midias[0]),
                ,TextWidget(text: 'Animação para ornar'),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            width: (correntWidth * 35) / 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            
            
                Text(
              project.descricao,
              softWrap: true,
              maxLines: 10,
              style: const TextStyle(
                color:  Colors.black,
                fontSize:  18,
                overflow: TextOverflow.clip,
                
              ),
              textAlign: TextAlign.left,
              
              )
              .animate()
                .fadeIn(delay: 700.ms),
              
                // TextWidget(text: project.descricao)
                
                ],
            ),
          )
        ],
      ),
    );
  }
}
