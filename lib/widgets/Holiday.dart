import 'package:flutter/material.dart';

class Holiday extends StatefulWidget {
  final String title;
  Holiday(this.title);
  @override
  _HolidayState createState() => _HolidayState();
}

List<Widget> _buildExpansionTitleChildren() => [
  ListTile(
    title: Text(
      " 15th August | Sun",
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.green
      ),
    ),
    subtitle: Text(
      "Independance Day",
      style: TextStyle(
        fontSize: 18
      ),
    ),
  )
];

class _HolidayState extends State<Holiday> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
