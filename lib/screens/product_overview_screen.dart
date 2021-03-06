import 'package:flutter/material.dart';
import 'package:leave/widgets/Holiday.dart';
import 'package:leave/widgets/Leaves.dart';
import '../widgets/app_drawer.dart';
import '../widgets/category_item.dart';
import '../widgets/expanded_cards2.dart';
import '../widgets/category_item1.dart';

class ProductsOverviewScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Leave & Attendance'),
      ),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                CategoryItem1(
                    'Absent Days For Current & Last Month', Colors.red, '1'),
                CategoryItem(
                    'Leave & Regularization History', Colors.blue, '2',Icons.access_time),
                CategoryItem(
                  'Time Report - Team', Colors.blue, '3',Icons.person_outline),
              ],
            ),
           
            ExpandCards2('My Calendar'),
      
            Leave('Apply Leave'),
            Holidays("Holiday Calendar")
            
          ],
        ),
      ),
      
    );
  }
}
