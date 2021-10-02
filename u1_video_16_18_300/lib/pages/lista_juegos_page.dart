import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:u1_video_11_a_15_300/pages/juego_mario_kart.dart';

class ListaJuegosPage extends StatelessWidget {
  const ListaJuegosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Juegos'),
      ),
      body: ListView(
        children: [
          ListTile(
              leading: Icon(MdiIcons.gamepad),
              title: Text('Mario Kart Deluxe 8'),
              subtitle: Text('\$ 59.990'),
              onTap: () {
                print('Mario Kart');
                //construye una ruta
                MaterialPageRoute route =
                    new MaterialPageRoute(builder: (context) {
                  return JuegoMarioKart();
                });
                //navega a la ruta
                Navigator.push(context, route);
              }),
          Divider(
            thickness: 1,
          ),
          ListTile(
              leading: Icon(MdiIcons.gamepad),
              title: Text('Lego Jurassic World'),
              subtitle: Text('\$ 45.990'),
              onTap: () {
                print('Jurassic World');
              }),
          Divider(
            thickness: 1,
          ),
          ListTile(
              leading: Icon(MdiIcons.gamepad),
              title: Text('Mario Maker 2'),
              subtitle: Text('\$ 50.990'),
              onTap: () {
                print('Mario Maker 2');
              }),
          Divider(
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
