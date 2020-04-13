import 'package:flutter/material.dart';
import 'package:flutterui_plants/UI/HomePage.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Plants UI",
      home: HomePage(),
    );
  }
}
