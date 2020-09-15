import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'image.dart';

class MyGalleryPage extends StatelessWidget {
  // ignore: always_specify_types
  final List<Images> imagesList = [
    Images('Plane', DateTime.now(), 'assets/chair.jpg'),
    Images('Table', DateTime.now(), 'assets/chair.jpg'),
    Images('Chair', DateTime.now(), 'assets/chair.jpg'),
    Images('Bottle', DateTime.now(), 'assets/chair.jpg'),
    Images('Mosquito', DateTime.now(), 'assets/chair.jpg'),
    Images('Egg', DateTime.now(), 'assets/chair.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: imagesList.length,
          itemBuilder: (BuildContext context, int index) =>
              buildImageCard(context, index)),
    );
  }

  Widget buildImageCard(BuildContext context, int index) {
    final Images image = imagesList[index];
    final double _width = MediaQuery.of(context).size.width;
    return Container(
      child: Card(
        elevation: 5,
        shape:
            const Border(right: BorderSide(color: Color(0xFF2B2664), width: 5)),
        shadowColor: Colors.blueGrey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      image.title,
                      style: const TextStyle(
                        fontSize: 22,
                      ),
                    ),
                    const Spacer(),
                    Text(
                        // ignore: unnecessary_string_interpolations
                        "${DateFormat('dd/MM/yyyy').format(image.imgDate).toString()}"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  image.url,
                  fit: BoxFit.cover,
                  width: _width,
                  height: 200,
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.001,
                  left: MediaQuery.of(context).size.height * 0.40,
                ),
                child: Container(
                  width: _width,
                  child: const CircleAvatar(
                    backgroundColor: Color(0xFF2B2664),
                    child: Icon(Icons.delete, color: Colors.white, size: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
