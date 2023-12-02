import 'package:flutter/material.dart';
import 'screens/OrganListPage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biologia in Realitatea Augmentata',
      home: OrganListPage(),
    );
  }
}
