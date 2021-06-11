import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';
import '../widgets/expanded_cards.dart';
import '../widgets/category_item.dart';

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
                CategoryItem(
                    'Absent Days For Current & Last Month', Colors.red, '1'),
                CategoryItem(
                    'Leave & Regularization History', Colors.blue, '2'),
                CategoryItem(
                  'Time Report - Team', Colors.blue, '3'),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            ExpandCards('My Calendar'),
            ExpandCards('Apply Leave'),
            ExpandCards('Holiday Calendar')
          ],
        ),
      ),
      
    );
  }
}
