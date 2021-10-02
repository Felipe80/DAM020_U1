import 'package:flutter/material.dart';

class TabNavesPage extends StatelessWidget {
  const TabNavesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Naves',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
    );
  }
}
