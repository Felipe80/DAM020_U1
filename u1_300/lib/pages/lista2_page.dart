import 'package:flutter/material.dart';

class Lista2Page extends StatelessWidget {
  // final equipos = [
  //   'Santiago Wanderers',
  //   'Universidad Católica',
  //   'Colo-Colo',
  //   'Audax Italiano',
  //   'Antofogasta',
  //   'Universidad de Concepción',
  //   'Everton'
  // ];

  final equipos = [
    {'nombre': 'Santiago Wanderers', 'ciudad': 'Valparaíso'},
    {'nombre': 'Universidad Católica', 'ciudad': 'Santiago'},
    {'nombre': 'Colo-Colo', 'ciudad': 'Santiago'},
    {'nombre': 'Audax Italiano', 'ciudad': 'Santiago'},
    {'nombre': 'Antofagasta', 'ciudad': 'Antofagasta'},
    {'nombre': 'Universidad de Concepción', 'ciudad': 'Concepción'},
    {'nombre': 'Everton', 'ciudad': 'Viña del Mar'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas 2'),
      ),
      body: ListView(
        children: equipos.map<Widget>((equipo) {
          return Column(
            children: [
              ListTile(
                leading: Icon(Icons.sports),
                title: Text(equipo['nombre'].toString()),
                subtitle: Text(equipo['ciudad'].toString()),
              ),
              Divider(
                thickness: 0.7,
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
