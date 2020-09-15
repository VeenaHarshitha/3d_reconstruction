import 'dart:ui';

import 'package:flutter/material.dart';

import 'mygallerypage.dart';
import 'mysearchpage.dart';
import 'pickimage.dart';

class GalleryHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _GalleryHomeState();
  }
}

class _GalleryHomeState extends State<GalleryHome> {
  int _currentIndex = 0;
  // ignore: always_specify_types
  final List<Widget> _children = [
    MyGalleryPage(),
    MySearchPage(),
  ];
  @override
  Widget build(BuildContext context) {
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
           actions: <Widget>[
    IconButton(
      icon: Icon(
        Icons.add,
        color: Colors.white,
      ),
      onPressed: () {
         Navigator.of(context).push(
                          // ignore: prefer_void_to_null
                          MaterialPageRoute<Null>(
                              builder: (BuildContext context) {
                        return PickImageScreen();
                      }));
      },
    )
  ],
        ),
       
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
