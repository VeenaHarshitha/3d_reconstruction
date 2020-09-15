import 'package:flutter/material.dart';
import 'secondscreen.dart';

class DemoPage extends StatefulWidget {
  @override
  _DemoPageState createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    final double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: _width,
            height: _height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/one.png'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          // ignore: prefer_const_constructors
          Positioned(
            bottom: 32.0,
            left: 295.0,
            //right: 10.0,
            child: GestureDetector(
              onTap: (){
                  Navigator.of(context).push(
                          // ignore: prefer_void_to_null
                          MaterialPageRoute<Null>(
                              builder: (BuildContext context) {
                        return SecondScreen();
                      }));
              },
              child:Image.asset('assets/right.png',
                //width: 110.0,
                height: 30.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
