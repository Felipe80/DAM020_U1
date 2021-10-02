import 'package:flutter/material.dart';

class DwLanzamientosPage extends StatelessWidget {
  const DwLanzamientosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lanzamientos'),
      ),
      body: Center(
        child: Text('Lanzamientos',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
