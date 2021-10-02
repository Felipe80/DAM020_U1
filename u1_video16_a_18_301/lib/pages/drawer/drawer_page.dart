import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:u1_video11_a_15_301/pages/tabs/tab_home_page.dart';
import 'package:u1_video11_a_15_301/pages/tabs/tab_lanzamientos_page.dart';
import 'package:u1_video11_a_15_301/pages/tabs/tab_naves_page.dart';
import 'package:u1_video11_a_15_301/pages/tabs/tab_visitantes_page.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Nav'),
      ),
      body: Text('Inicio'),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/user.jpg'),
                      ),
                      border: Border.all(
                        width: 2,
                        color: Color(0xFFD51E2D),
                      ),
                    ),
                  ),
                  Text('Celeste'),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                MdiIcons.earth,
                color: Color(0xFFD51E2D),
              ),
              title: Text('Inicio'),
              onTap: () => _navegar(context, 1),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              leading: Icon(
                MdiIcons.rocketLaunchOutline,
                color: Color(0xFFD51E2D),
              ),
              title: Text('Lanzamientos'),
              onTap: () => _navegar(context, 2),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              leading: Icon(
                MdiIcons.ufoOutline,
                color: Color(0xFFD51E2D),
              ),
              title: Text('Naves'),
              onTap: () => _navegar(context, 3),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              leading: Icon(
                MdiIcons.alienOutline,
                color: Color(0xFFD51E2D),
              ),
              title: Text('Visitantes'),
              onTap: () => _navegar(context, 4),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              leading: Icon(
                MdiIcons.arrowLeftBoldCircle,
                color: Color(0xFFD51E2D),
              ),
              title: Text('Cerrar'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }

  void _navegar(BuildContext context, int pagina) {
    List<Widget> paginas = [
      TabHomePage(),
      TabLanzamientosPage(),
      TabNavesPage(),
      TabVisitantesPage(),
    ];

    final route = new MaterialPageRoute(builder: (context) {
      return paginas[pagina - 1];
    });

    Navigator.pop(context);
    Navigator.push(context, route);
  }
}
