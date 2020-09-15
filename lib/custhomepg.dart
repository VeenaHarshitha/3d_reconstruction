import 'dart:ui';

import 'package:flutter/material.dart';
import 'pickimage.dart';
// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const Color primarycolor = Color(0xFF2B2664);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
        child: AppBar(
          backgroundColor: const Color(0xFF2B2664),
          title: const Padding(
            padding: EdgeInsets.only(top: 12.0, bottom: 10.0),
            child: Text(
              'My Gallery',
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
        child: const Center(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "You don't have any images in your gallery yet",
              style: TextStyle(
                fontSize: 26,
                color: primarycolor,
                fontWeight: FontWeight.w400,
              ),
              maxLines: 4,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
      
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF2B2664),
        onPressed: () {
             Navigator.of(context).push(
                          // ignore: prefer_void_to_null
                          MaterialPageRoute<Null>(
                              builder: (BuildContext context) {
                        return PickImageScreen();
                      }));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
