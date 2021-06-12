import 'package:flutter/material.dart';

class Holidays extends StatefulWidget {
  final String title;
  Holidays(this.title);
  @override
  _HolidaysState createState() => _HolidaysState();
}

List<Widget> _buildExpansionTileChildren() => [
      ListTile(
        title: Text("15th August | Sun", style: TextStyle(fontSize: 20.0, color: Colors.green)),
        subtitle: Text("Independance Day", style: TextStyle(fontSize: 18.0)),
      
      ),
      ListTile(
        title: Text("10th September | Fri", style: TextStyle(fontSize: 20.0, color: Colors.green)),
        subtitle: Text("Ganesh Chaturthi", style: TextStyle(fontSize: 18.0)),
      
      ),
      ListTile(
        title: Text("2nd October | Saturday", style: TextStyle(fontSize: 20.0, color: Colors.green)),
        subtitle: Text("Gandhi Jayanti", style: TextStyle(fontSize: 18.0)),
      
      ),
      ListTile(
        title: Text(
          "See More",
          style: TextStyle(color: Colors.blue, fontSize: 12.0),
        ),
      )
    ];

class _HolidaysState extends State<Holidays> {
  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.blue,
        margin: EdgeInsets.all(12),
        child: Padding(
            padding:
                EdgeInsets.only(top: 4.0, left: 4.0, right: 4.0, bottom: 4.0),
            child: ExpansionTile(
              childrenPadding: EdgeInsets.only(bottom: 10.0),
              iconColor: Colors.white,
              backgroundColor: Colors.white,
              title: Text(
                widget.title,
                style: TextStyle(color: Colors.white),
              ),
              children: _buildExpansionTileChildren(),
            )));
  }
}
