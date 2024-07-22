import 'package:flutter/material.dart';
import 'package:portifolio/assents.dart';
// import 'package:flutter_animate/flutter_animate.dart';
import 'package:portifolio/repository/project_repository.dart';
import 'package:portifolio/widgets/project_widget.dart';

class ProjectsPage extends StatefulWidget {
  final bool mobile;
  const ProjectsPage({super.key, required this.mobile});

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {

  int pageIndex = 0;
  late PageController pc;
  @override
  void initState() {
    super.initState();
    pc = PageController(initialPage: pageIndex);
  }

  setPageIndex(page) {
    setState(() {
      pageIndex = page;
    });
      pc.animateToPage(pageIndex,
          duration: const Duration(milliseconds: 350),
          curve: Curves.decelerate);
  }

  @override
  Widget build(BuildContext context) {
    final correntWidth = MediaQuery.of(context).size.width;
    final correntHeidth = MediaQuery.of(context).size.height;

    return Container(
      // padding: const EdgeInsets.all(10),
      // color: Cores.base,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Cores.laranjaClaro,
            ),
            height: widget.mobile == false
                ? (correntHeidth * 80) / 100
                : (correntHeidth * 80) / 100,
            width: widget.mobile == false
                ? (correntWidth * 70) / 100
                : (correntWidth * 95) / 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // SizedBox(),
                SizedBox(
          
                  height: (correntHeidth * 70) / 100,
                 
          
          
                  child: 
                  PageView(
                    controller: pc,
                    onPageChanged: (page) {
                      setPageIndex(page);
                    },
                    scrollDirection: Axis.horizontal,
                    children: [
                      ProjectWidget(project: project[0]),
                      ProjectWidget(project: project[1]),
                      ProjectWidget(project: project[2]),
                    ],
                  ),
                ),
                SizedBox(
                  height: 80,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      pageIndex != 0
                          ? IconButton(
                              onPressed: () {
                                setState(() {
                                  setPageIndex(pageIndex - 1);
                                });
                              },
                              icon:  Icon(Icons.navigate_before,size: 34,color: Cores.base,))
                          :  Icon(Icons.navigate_before,size: 34,color: Cores.grafite),
                      SizedBox(
                        width: 300,
                        child: BottomNavigationBar(
                          type: BottomNavigationBarType.fixed,
                          showUnselectedLabels: false,
                          iconSize: 15,
                          showSelectedLabels: false,
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          landscapeLayout:
                              BottomNavigationBarLandscapeLayout.centered,
                          // backgroundColor: Styles.secondary,
                          selectedItemColor: Cores.laranjaEscuro,
                          unselectedItemColor: Cores.base,
                          currentIndex: pageIndex,
                          onTap: (page) {
                            setPageIndex(page);
                            
                    
                          },
                          items: const [
                            BottomNavigationBarItem(
                                icon: Icon(Icons.circle), label: '.'),
                            BottomNavigationBarItem(
                                icon: SizedBox(child: Icon(Icons.circle)),
                                label: '.'),
                            BottomNavigationBarItem(
                                icon: Icon(Icons.circle), label: '.'),
                            // BottomNavigationBarItem(
                            //     icon: Icon(Icons.circle), label: '.'),
                          ],
                        ),
                      ),
                      pageIndex < 2
                          ? IconButton(
                              onPressed: () {
                                setState(() {
                                  setPageIndex(pageIndex + 1);
                                 
                                });
                              },
                              icon:  Icon(Icons.navigate_next,size: 34,color: Cores.base))
                          :  Icon(Icons.navigate_next,size: 34,color: Cores.grafite),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
