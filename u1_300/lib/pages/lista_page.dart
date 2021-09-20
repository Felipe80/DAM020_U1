import 'package:flutter/material.dart';

class ListaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.sports),
            title: Text('Santiago Wanderers'),
          ),
          Divider(
            color: Color(0xFF839EBD),
            thickness: 0.7,
          ),
          ListTile(
            leading: Icon(Icons.sports),
            title: Text('Universidad Católica'),
          ),
          Divider(
            color: Color(0xFF839EBD),
            thickness: 0.7,
          ),
          ListTile(
            leading: Icon(Icons.sports),
            title: Text('Colo-Colo'),
          ),
        ],
      ),
    );
  }
}
