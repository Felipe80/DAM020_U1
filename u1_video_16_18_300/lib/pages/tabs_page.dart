import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:u1_video_11_a_15_300/pages/tabs/tab_home_page.dart';
import 'package:u1_video_11_a_15_300/pages/tabs/tab_lanzamientos_page.dart';
import 'package:u1_video_11_a_15_300/pages/tabs/tab_naves_page.dart';
import 'package:u1_video_11_a_15_300/pages/tabs/tab_visitantes_page.dart';

class TabsPage extends StatelessWidget {
  const TabsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Ejemplo Tabs'),
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(
                  child: Text('Home'),
                  icon: Icon(MdiIcons.earth),
                ),
                Tab(
                  child: Text('Lanzamientos'),
                  icon: Icon(MdiIcons.rocketLaunchOutline),
                ),
                Tab(
                  child: Text('Naves'),
                  icon: Icon(MdiIcons.ufoOutline),
                ),
                Tab(
                  child: Text('Visitantes'),
                  icon: Icon(MdiIcons.alienOutline),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              TabsHomePage(),
              TabsLanzamientosPage(),
              TabsNavesPage(),
              TabsVisitantesPage(),
            ],
          ),
        ),
      ),
    );
  }
}
