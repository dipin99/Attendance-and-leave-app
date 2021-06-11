import 'dart:ui';

import 'package:flutter/material.dart';



class ExpandCards1 extends StatelessWidget {
  final String title;
  ExpandCards1(this.title);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Color.fromARGB(255, 12, 109, 230),
      margin: EdgeInsets.all(12),
      child: Padding(
        padding: EdgeInsets.only(top: 4.0, left: 4.0, right: 4.0, bottom: 4.0),
        child: ExpansionTile(
          iconColor: Colors.white,
          backgroundColor: Color.fromRGBO(248, 248, 248, 1),
          title: Text(
            title,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          children: <Widget>[],
        ),
      ),
    );
  }
}