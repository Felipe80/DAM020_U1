import 'package:flutter/material.dart';
import 'package:u1_video11_a_15_301/widgets/box_ejemplo.dart';
import 'package:u1_video11_a_15_301/widgets/box_titulo.dart';

class Vid2021Page extends StatefulWidget {
  const Vid2021Page({Key? key}) : super(key: key);

  @override
  _Vid2021PageState createState() => _Vid2021PageState();
}

class _Vid2021PageState extends State<Vid2021Page> {
  int _stackIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Videos 20 y 21'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BoxTitulo(
              titulo: 'Expanded',
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                border: Border.all(color: Colors.blue.shade100),
              ),
              child: Row(
                children: [
                  BoxEjemplo(
                      texto: '1',
                      color: 0xFF1E6096,
                      ancho: 60,
                      alto: double.infinity),
                  Expanded(
                      child: BoxEjemplo(
                          texto: '2',
                          color: 0xFF39A99E,
                          ancho: 60,
                          alto: double.infinity)),
                  BoxEjemplo(
                      texto: '3',
                      color: 0xFFEECF59,
                      ancho: 60,
                      alto: double.infinity),
                  Expanded(
                      flex: 2,
                      child: BoxEjemplo(
                          texto: '4',
                          color: 0xFFE65239,
                          ancho: 60,
                          alto: double.infinity)),
                ],
              ),
            ),
            BoxTitulo(
              titulo: 'Spacer',
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                border: Border.all(color: Colors.blue.shade100),
              ),
              child: Row(
                children: [
                  BoxEjemplo(
                      texto: '1',
                      color: 0xFF1E6096,
                      ancho: 60,
                      alto: double.infinity),
                  Spacer(
                    flex: 3,
                  ),
                  BoxEjemplo(
                      texto: '2',
                      color: 0xFF39A99E,
                      ancho: 60,
                      alto: double.infinity),
                  BoxEjemplo(
                      texto: '3',
                      color: 0xFFEECF59,
                      ancho: 60,
                      alto: double.infinity),
                  Spacer(),
                  BoxEjemplo(
                      texto: '4',
                      color: 0xFFE65239,
                      ancho: 60,
                      alto: double.infinity),
                ],
              ),
            ),
            BoxTitulo(
              titulo: 'Stack',
            ),
            Container(
              height: 200,
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                border: Border.all(color: Colors.green.shade100),
              ),
              child: Stack(
                // clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: 20,
                    child: Container(
                      width: 150,
                      height: 150,
                      color: Color(0xFFEECF59),
                    ),
                  ),
                  Positioned(
                    left: 60,
                    bottom: -40,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Color(0xFFE65239),
                    ),
                  ),
                ],
              ),
            ),
            BoxTitulo(
              titulo: 'IndexedStack',
            ),
            Container(
              alignment: Alignment.center,
              height: 200,
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                border: Border.all(color: Colors.green.shade100),
              ),
              child: IndexedStack(
                index: _stackIndex,
                children: [
                  BoxEjemplo(texto: '1', color: 0xFF1E6096),
                  BoxEjemplo(texto: '2', color: 0xFF39A99E),
                  BoxEjemplo(texto: '3', color: 0xFFEECF59),
                  BoxEjemplo(texto: '4', color: 0xFFE65239),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 40),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    child: Text('Uno'),
                    onPressed: () => _cambiarStackIndex(1),
                  ),
                  ElevatedButton(
                    child: Text('Dos'),
                    onPressed: () => _cambiarStackIndex(2),
                  ),
                  ElevatedButton(
                    child: Text('Tres'),
                    onPressed: () => _cambiarStackIndex(3),
                  ),
                  ElevatedButton(
                    child: Text('Cuatro'),
                    onPressed: () => _cambiarStackIndex(4),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _cambiarStackIndex(int index) {
    setState(() {
      _stackIndex = index - 1;
    });
  }
}
