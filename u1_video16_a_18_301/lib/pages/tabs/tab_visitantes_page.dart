import 'package:flutter/material.dart';

class TabVisitantesPage extends StatelessWidget {
  const TabVisitantesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Visitantes',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
    );
  }
}
