import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:u1_video11_a_15_301/pages/juego_jurassicworld.dart';
import 'package:u1_video11_a_15_301/pages/juego_mariokart.dart';
import 'package:u1_video11_a_15_301/pages/juego_mariomaker.dart';

class ListaJuegos extends StatelessWidget {
  const ListaJuegos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Juegos'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(MdiIcons.gamepad),
            title: Text('Mario Kart Deluxe 8'),
            subtitle: Text('\$ 59.990'),
            onTap: () {
              print('Mario Kart Deluxe 8');
              _navegar(context, 'mariokart');
              // MaterialPageRoute route =
              //     new MaterialPageRoute(builder: (context) {
              //   return JuegoMariokart();
              // });
              // Navigator.push(context, route);
            },
          ),
          Divider(
            thickness: 1,
          ),
          ListTile(
            leading: Icon(MdiIcons.gamepad),
            title: Text('Lego Jurissic World'),
            subtitle: Text('\$ 49.990'),
            onTap: () {
              print('Lego Jurissic World');
              _navegar(context, 'jurassicworld');
            },
          ),
          Divider(
            thickness: 1,
          ),
          ListTile(
            leading: Icon(MdiIcons.gamepad),
            title: Text('Mario Maker 2'),
            subtitle: Text('\$ 55.990'),
            onTap: () {
              print('Mario Maker 2');
              _navegar(context, 'mariomaker2');
            },
          ),
          Divider(
            thickness: 1,
          ),
        ],
      ),
    );
  }

  _navegar(BuildContext context, String pagina) {
    MaterialPageRoute route = new MaterialPageRoute(builder: (context) {
      switch (pagina) {
        case 'mariokart':
          return JuegoMariokart();
        case 'jurassicworld':
          return JuegoJurassicworld();
        default:
          return JuegoMariomaker2();
      }
    });

    Navigator.push(context, route);
  }
}
