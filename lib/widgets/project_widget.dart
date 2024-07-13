import 'package:flutter/material.dart';
import 'package:portifolio/model/project.dart';
import 'package:portifolio/widgets/text_widget.dart';

class ProjectWidget extends StatelessWidget {
  final Project project;
  const ProjectWidget({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    final correntWidth = MediaQuery.of(context).size.width;
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(8),
            width: (correntWidth * 35) / 100,
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(text: project.titulo, size: 28),
                Image.network(project.midias[0]),

                // TextWidget(text: project.midias[0]),
                TextWidget(text: 'Animação para ornar'),
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
              
              ),
              
                // TextWidget(text: project.descricao)
                
                ],
            ),
          )
        ],
      ),
    );
  }
}
