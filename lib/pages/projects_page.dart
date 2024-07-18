import 'package:flutter/material.dart';
import 'package:portifolio/repository/project_repository.dart';
import 'package:portifolio/widgets/project_widget.dart';

class ProjectsPage extends StatefulWidget {
  final bool mobile;
  const ProjectsPage({super.key, required this.mobile});

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
    int _indice = 0;
    void _incrementIndice() {
      setState(() {
        _indice++;
      });
    }
    void _decrementIndice() {
      setState(() {
        _indice--;
      });
    }
  @override
  Widget build(BuildContext context) {
    final correntWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.all(10),
      color: Colors.brown,
      child: Center(
        child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.green,
            ),
            height: widget.mobile == false
                ? (correntWidth * 80) / 100
                : (correntWidth * 100) / 100,
            width: widget.mobile == false
                ? (correntWidth * 70) / 100
                : (correntWidth * 95) / 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProjectWidget(
                  project: project[_indice],
                ),
                SizedBox(height: 50,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _indice != 0 
                      ? 
                      IconButton(
                            onPressed: () {
                              setState(() {
                                _decrementIndice();
                              });
                            },
                            icon: Icon(Icons.navigate_before))
                      :
                             Icon(Icons.navigate_before),
                      


                      _indice == 0 ? Icon(Icons.circle,color: Colors.grey[600]) :  Icon(Icons.circle,size: 15,color: Colors.grey[800]),
                      _indice == 1 ? Icon(Icons.circle,color: Colors.grey[600]) :  Icon(Icons.circle,size: 15,color: Colors.grey[800]),
                      _indice == 2 ? Icon(Icons.circle,color: Colors.grey[600]) :  Icon(Icons.circle,size: 15,color: Colors.grey[800]),
                  
                  
                  
                     
                         _indice != project.length -1 
                         ? 
                          IconButton(
                            onPressed: () {
                              setState(() {
                                _incrementIndice();
                              });
                            },
                            icon: Icon(Icons.navigate_next))
                          :
                            Icon(Icons.navigate_next),
                     
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
