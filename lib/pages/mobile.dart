import 'package:flutter/material.dart';
import 'package:portifolio/assents.dart';
import 'package:portifolio/pages/hello_page.dart';
import 'package:portifolio/pages/about_page.dart';
import 'package:portifolio/pages/contact_page.dart';
import 'package:portifolio/pages/projects_page.dart';

class MobilePage extends StatefulWidget {
  const MobilePage({super.key});

  @override
  State<MobilePage> createState() => _MobilePageState();
}

class _MobilePageState extends State<MobilePage> {
 int indexPage = 0;
  late PageController pc;
  @override
  void initState() {
    super.initState();
    pc = PageController(initialPage: indexPage);
  }

  setPageIndex(page) {
    // print(indexPage);
    setState(() {
      indexPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    final correntHeight = MediaQuery.of(context).size.height;
    pc = PageController(initialPage: indexPage);

    return Scaffold(
      extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //     centerTitle: true,
      //     title: const Text('Mobile'),
      //     ),
      // drawer: const Menu(),
      body: Container(
          height: correntHeight - 58,
          color: Cores.grafite,
          child:
          
          
           PageView(
            scrollDirection: Axis.vertical,
            controller: pc,
            onPageChanged: (value) {
              setPageIndex(value);
            },
            children: const [
              HelloPage(mobile: true,),
              ContactPage(),
              ProjectsPage(mobile: true),
              AboutPage(),
            ],
          ),
        ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          iconSize: 1,
          showSelectedLabels: true,
          elevation: 1,
          landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
           backgroundColor: Cores.laranjaEscuro,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black38,
          currentIndex: indexPage,
          onTap: (page) {
            pc.animateToPage(page,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInCubic);
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon( Icons.remove ),
                label: 'Hello World'),
            BottomNavigationBarItem(
                icon: SizedBox(child: Icon(Icons.remove)), label: 'Sobre eu'),
            BottomNavigationBarItem(
                icon: Icon(Icons.remove), label: 'Projetos'),
            BottomNavigationBarItem(
                icon: Icon(Icons.wysiwyg), label: 'Contato'),
          ],
        ),
    );
  }
}
