import 'package:flutter/material.dart';

class TabsVisitantesPage extends StatelessWidget {
  const TabsVisitantesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Visitantes',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
