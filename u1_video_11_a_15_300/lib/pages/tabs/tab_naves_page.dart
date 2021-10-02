import 'package:flutter/material.dart';

class TabsNavesPage extends StatelessWidget {
  const TabsNavesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Naves',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
