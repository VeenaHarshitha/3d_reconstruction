import 'package:flutter/material.dart';
import 'package:home_app/apphomepage.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  Color primarycolor = const Color(0xFF2B2664);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '3D Reconstruction',
      theme: ThemeData(
        fontFamily: 'Segoe UI',
        primaryColor: primarycolor,
      ),
      home: Home(),
    );
  }
}
