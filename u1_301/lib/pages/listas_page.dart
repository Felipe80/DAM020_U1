import 'package:flutter/material.dart';

class ListasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(
              Icons.sports,
              color: Color(0xFF1F6096),
            ),
            trailing: Icon(Icons.android),
            title: Text('Santiago Wanderers'),
            subtitle: Text('Equipo de fútbol'),
          ),
          Divider(
            color: Color(0xFFF75326),
            thickness: 0.7,
          ),
          ListTile(
            leading: Icon(
              Icons.sports,
              color: Color(0xFF1F6096),
            ),
            trailing: Icon(Icons.android),
            title: Text('Universidad Católica'),
            subtitle: Text('Equipo de fútbol'),
          ),
          Divider(
            color: Color(0xFFF75326),
            thickness: 0.7,
          ),
          ListTile(
            leading: Icon(
              Icons.sports,
              color: Color(0xFF1F6096),
            ),
            trailing: Icon(Icons.android),
            title: Text('Audax Italiano'),
            subtitle: Text('Equipo de fútbol'),
          ),
        ],
      ),
    );
  }
}
