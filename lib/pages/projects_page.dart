import 'package:flutter/material.dart';
import 'package:portifolio/widgets/project_widget.dart';

class ProjectsPage extends StatelessWidget {
  final bool mobile;
  const ProjectsPage({super.key, required this.mobile});

  @override
  Widget build(BuildContext context) {
    final correntWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(50),
      color: Colors.brown,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.green,
          ),
          // color: Colors.green,
          height: (correntWidth * 80) / 100,
          width: (correntWidth * 50) / 100,
          child: ProjectWidget()),),
    );
  }
}