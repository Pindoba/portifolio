import 'package:flutter/material.dart';
import 'package:portifolio/pages/hello_page.dart';
import 'package:portifolio/menu.dart';
import 'package:portifolio/pages/about_page.dart';
import 'package:portifolio/pages/contact_page.dart';

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
      appBar: AppBar(
          centerTitle: true,
          title: const Text('Mobile'),
          ),
      drawer: const Menu(),
      body: Container(
          height: correntHeight - 58,
          color: Colors.red,
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
              AboutPage(),
              ContactPage(),
            ],
          ),
        ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          elevation: 8,
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
    );
  }
}
