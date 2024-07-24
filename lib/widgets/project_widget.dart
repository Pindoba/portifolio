import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portifolio/assents.dart';
import 'package:portifolio/model/project.dart';
import 'package:portifolio/widgets/text_widget.dart';

class ProjectWidget extends StatelessWidget {
  final bool mobile;
  final Project project;
  const ProjectWidget({super.key, required this.project, required this.mobile});

  @override
  Widget build(BuildContext context) {
    final correntWidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          width: correntWidth > 700 
          ?
          (correntWidth * 35) / 100
          :
          (correntWidth * 95) / 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget(text: project.titulo, size: mobile == true ? SizeFont.mobileTitle : SizeFont.desktopTitle)
              .animate()
              .fadeIn(delay: 600.ms),
              SizedBox(height: 300,
                child: Image.network(project.midias[0])
                .animate()
                .scaleXY(
                  begin: 0,
                  end: 1,
                  duration: 300.ms,
                  delay: 350.ms),
              ),
              // TextWidget(text: project.midias[0]),
              correntWidth > 700 ?
              const TextWidget(text: 'Animação para ornar')
              :
              Container(
          padding: const EdgeInsets.all(8),
          width: (correntWidth * 90) / 100,
          child: Text(
                        project.descricao,
                        softWrap: true,
                        maxLines: 10,
                        style:  TextStyle(
          color:  Colors.black,
          fontSize:  mobile == true ? SizeFont.mobileParagrafo : SizeFont.desktopParagrafo,
          overflow: TextOverflow.clip,
                        ),
                        textAlign: TextAlign.left,
                        )
                        .animate()
                        .fadeIn(delay: 700.ms),
                      ),
                    ],
          ),
        ),
        correntWidth > 700
        ?
        Container(
          padding: const EdgeInsets.all(8),
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
              
              ],
          ),
        )
        :
        const SizedBox()
      ],
    );
  }
}
