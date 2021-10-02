import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:u1_video11_a_15_301/pages/tabs/tab_home_page.dart';
import 'package:u1_video11_a_15_301/pages/tabs/tab_lanzamientos_page.dart';
import 'package:u1_video11_a_15_301/pages/tabs/tab_naves_page.dart';
import 'package:u1_video11_a_15_301/pages/tabs/tab_visitantes_page.dart';

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
                  text: 'Home',
                  icon: Icon(MdiIcons.earth),
                ),
                Tab(
                  text: 'Lanzamientos',
                  icon: Icon(MdiIcons.rocketLaunchOutline),
                ),
                Tab(
                  text: 'Naves',
                  icon: Icon(MdiIcons.ufoOutline),
                ),
                Tab(
                  text: 'Visitantes',
                  icon: Icon(MdiIcons.alienOutline),
                ),
                // Tab(
                //   text: 'Invasores',
                //   icon: Icon(MdiIcons.spaceInvaders),
                // ),
                // Tab(
                //   text: 'Estación',
                //   icon: Icon(MdiIcons.spaceStation),
                // ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              TabHomePage(),
              TabLanzamientosPage(),
              TabNavesPage(),
              TabVisitantesPage(),
            ],
          ),
        ),
      ),
    );
  }
}
