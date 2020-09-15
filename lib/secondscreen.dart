import 'package:flutter/material.dart';
import 'thirdscreen.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    final double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: _height,
            width: _width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/two.png'),
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
              onTap: () {
                Navigator.of(context).push(
                    // ignore: prefer_void_to_null
                    MaterialPageRoute<Null>(builder: (BuildContext context) {
                  return ThirdScreen();
                }));
              },
              child: Image.asset(
                'assets/right.png',
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
// class SecondScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final double _width = MediaQuery.of(context).size.width;
//     final double _height = MediaQuery.of(context).size.height;

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('3D Reconstruction'),
//         centerTitle: true,
//       ),
//       body: Container(
//         width: _width,
//         height: _height,
//         color: Colors.pink,
//         child: Column(
//           // ignore: always_specify_types
//           children: <Widget>[
//             const SizedBox(
//               height: 15,
//             ),
//             Image.asset('assets/car_example.png',
//                 width: 300, height: 300, fit: BoxFit.fill),
//             const SizedBox(
//               height: 20,
//             ),
//             Image.asset('assets/car_example.gif',
//                 width: 300, height: 300, fit: BoxFit.fill),
//             FlatButton(
//               onPressed: () {
//                 Navigator.of(context).push(
//                     // ignore: prefer_void_to_null
//                     MaterialPageRoute<Null>(builder: (BuildContext context) {
//                   return HomeScreen();
//                 }));
//               },
//               child: const Padding(
//                 padding: EdgeInsets.only(
//                     top: 15.0, bottom: 15.0, left: 30.0, right: 30.0),
//                 child: Text(
//                   'Next',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 28,
//                     fontWeight: FontWeight.w300,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
