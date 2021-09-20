import 'package:flutter/material.dart';

class Listas2Page extends StatelessWidget {
  // final equipos = [
  //   'Santiago Wanderers',
  //   'Universidad Católica',
  //   'Colo-Colo',
  //   'Audax Italiano',
  //   'Universidad de Concepción',
  //   'Unión La Calera',
  //   'O\'Higgins',
  //   'Everton'
  // ];

  final equipos = [
    {'nombre': 'Santiago Wanderers', 'ciudad': 'Valparaíso'},
    {'nombre': 'Universidad Católica', 'ciudad': 'Santiago'},
    {'nombre': 'Universidad de Concepción', 'ciudad': 'Concepción'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas 2'),
      ),
      body: ListView(
        children: equipos.map<Widget>((equipo) {
          return ListTile(
            leading: Icon(
              Icons.sports,
              color: Color(0xFF1F6096),
            ),
            title: Text(equipo['nombre'].toString()),
            subtitle: Text(equipo['ciudad'].toString()),
          );
        }).toList(),
      ),
    );
  }
}
