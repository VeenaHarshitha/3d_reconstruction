import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

import 'firstscreen.dart';

class Home extends StatelessWidget {
  final Color primaryColor = const Color(0xFF2B2664);
  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    final double _height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
        child: AppBar(
          backgroundColor: primaryColor,
          title: const Padding(
            padding: EdgeInsets.only(top: 18.0,bottom: 10.0),
            child: Text(
              '3D Reconstruction',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                fontFamily: 'Segoe UI',
              ),
            ),
          ),
          centerTitle: true,
        ),
        ),
        body: Container(
          width: _width,
          height: _height,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  SizedBox(
                    height: _height * 0.25,
                  ),
                  const AutoSizeText(
                    'Get ready to experience the 3 dimensional view of objects in your hands',
                    style: TextStyle(
                      fontSize: 26,
                      color: Color(0xFF2B2664),
                      fontWeight: FontWeight.w300,
                    ),
                    maxLines: 4,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: _height * 0.18,
                  ),
                  FlatButton(
                    color: const Color(0xFF2B2664),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0)),
                    onPressed: () {
                      Navigator.of(context).push(
                          // ignore: prefer_void_to_null
                          MaterialPageRoute<Null>(
                              builder: (BuildContext context) {
                        return DemoPage();
                      }));
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(
                          top: 15.0, bottom: 15.0, left: 30.0, right: 30.0),
                      child: Text(
                        "Let's Go",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:30,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
