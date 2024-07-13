import 'package:flutter/material.dart';
import 'package:portifolio/repository/project_repository.dart';
import 'package:portifolio/widgets/project_widget.dart';

class ProjectsPage extends StatelessWidget {
  final bool mobile;
  const ProjectsPage({super.key, required this.mobile});

  @override
  Widget build(BuildContext context) {
    final correntWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.brown,
      child: Center(
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.green,
          ),
          // color: Colors.green,
          height: mobile == false ?(correntWidth * 80) / 100 : (correntWidth * 100) / 100,
          width: mobile == false ?(correntWidth *  70) / 100 : (correntWidth *  95) / 100,
          child: ProjectWidget(project: project[0],)),),
    );
  }
}