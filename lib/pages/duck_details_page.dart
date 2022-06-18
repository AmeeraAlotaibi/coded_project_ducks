import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/duck.dart';

class DuckDetailsPage extends StatelessWidget {
  final Duck duck;
  DuckDetailsPage({required this.duck});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(duck.name),
      ),
      body: Column(children: [
        Container(
          margin: EdgeInsets.only(top: 25),
          width: 400,
          height: 325,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(duck.image))),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 25),
                padding: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.black26, width: 3))),
                child: Text(
                  "Description",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                ),
              ),
              Text(
                duck.description,
                textAlign: TextAlign.justify,
                style: TextStyle(color: Colors.black87, fontSize: 15),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
