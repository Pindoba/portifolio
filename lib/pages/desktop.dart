import 'package:flutter/material.dart';
import 'package:portifolio/pages/hello_page.dart';
import 'package:portifolio/pages/about_page.dart';
import 'package:portifolio/pages/contact_page.dart';
import 'package:portifolio/pages/projects_page.dart';

class DesktopPage extends StatefulWidget {
  const DesktopPage({super.key});

  @override
  State<DesktopPage> createState() => _DesktopPageState();
}

class _DesktopPageState extends State<DesktopPage> {
  int indexPage = 0;
  late PageController pc;
  @override

  void initState() {
    super.initState();
    pc = PageController(initialPage: indexPage);
  }

  setPageIndex(page) {
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
      body: Column(
        children: [
          BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          selectedFontSize: 24,
          unselectedFontSize: 18,
          showSelectedLabels: true,
          iconSize: 1,
          elevation: 12,
          landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
          // backgroundColor: Styles.secondary,
          // selectedItemColor: Styles.primary,
          // unselectedItemColor: Styles.backgroud,
          currentIndex: indexPage,
          onTap: (page) {
            pc.animateToPage(page,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInCubic);
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon( Icons.remove ),
                label: 'Apresentação'),
            BottomNavigationBarItem(
                icon: SizedBox(child: Icon(Icons.remove)), label: 'Sobre eu'),
            BottomNavigationBarItem(
                icon: Icon(Icons.remove), label: 'Projetos'),
            BottomNavigationBarItem(
                icon: Icon(Icons.wysiwyg), label: 'Contato'),
          ],
        ),
          Container(
              height: correntHeight - 59,
              color: Colors.red,
              child: PageView(
                scrollDirection: Axis.vertical,
                controller: pc,
                onPageChanged: (value) {
                  setPageIndex(value);
                },
                children: const [
                  HelloPage(mobile: false),
                  ContactPage(),
                  ProjectsPage(mobile: false),
                  AboutPage(),
                  ContactPage(),
                ],
              ),
            ),
        ],
      ),

    );
  }
}
