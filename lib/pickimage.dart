import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'mygallery.dart';

class PickImageScreen extends StatefulWidget {
  @override
  _PickImageScreenState createState() => _PickImageScreenState();
}

class _PickImageScreenState extends State<PickImageScreen> {
  File _imageFile;
  final ImagePicker _picker = ImagePicker();
  bool _uploaded;
  // ignore: always_specify_types
  Future getImage() async {
    // ignore: prefer_final_locals
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _imageFile = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    //final double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
        child: AppBar(
          backgroundColor: const Color(0xFF2B2664),
          title: const Padding(
            padding: EdgeInsets.only(top: 12.0, bottom: 10.0),
            child: Text(
              'Pick Image',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.white,
                fontFamily: 'Segoe UI',
              ),
            ),
          ),
          centerTitle: true,
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: _imageFile == null
                  ? const Center(
                      child: Text(
                        'No image picked yet',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    )
                  : Center(
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.1,
                          ),
                          Image.file(
                            _imageFile,
                            height: MediaQuery.of(context).size.height * 0.4,
                            width: MediaQuery.of(context).size.height * 0.4,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                          ),
                          FlatButton(
                            color: const Color(0xFF2B2664),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0)),
                            onPressed: () {
                              Navigator.of(context).push(
                                  // ignore: prefer_void_to_null
                                  MaterialPageRoute<Null>(
                                      builder: (BuildContext context) {
                                return GalleryHome();
                              }));
                            },
                            child: const Padding(
                              padding: EdgeInsets.only(
                                  top: 15.0,
                                  bottom: 15.0,
                                  left: 30.0,
                                  right: 30.0),
                              child: Text(
                                'Upload',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
            ),
          ),
          Container(
            color: const Color(0xFF2B2664),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 75,
                    child: GestureDetector(
                      onTap: () {
                        getImage();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/camera.png',
                          height: 52.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 70,
                    child: GestureDetector(
                      onTap: () {
                        getImage();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/gallery.png',
                          height: 45.0,
                        ),
                      ),
                    ),
                  )
                ]),
          )
        ],
      ),
    );
  }
}

// Widget imageProfile() {
// }
