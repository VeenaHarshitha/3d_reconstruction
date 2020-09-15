import 'dart:ui';

import 'package:flutter/material.dart';
import 'custhomepg.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final double _width = MediaQuery.of(context).size.width;
    //final double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFF2B2664),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              child: const SizedBox(height: 230),
            ),
            Container(
              width: 350,
              height: 290,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 2.0,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(25.0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Capture the objects',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 32,
                        fontFamily: 'Segoe UI',
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Upload the image',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 32,
                        fontFamily: 'Segoe UI',
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Get the 3d view',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 32,
                        fontFamily: 'Segoe UI',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height:100,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    // ignore: prefer_void_to_null
                    MaterialPageRoute<Null>(builder: (BuildContext context) {
                  return HomeScreen();
                }));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(right: 15),
                    child: Image.asset(
                      'assets/right.png',
                      height: 30.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
