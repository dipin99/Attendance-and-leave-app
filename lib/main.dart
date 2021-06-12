import 'package:flutter/material.dart';
import './screens/product_overview_screen.dart';


void main() => runApp(Leave1());

class Leave1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Leave & Attendance',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.white
        ),
      home: ProductsOverviewScreen(),
    );
  }
}


