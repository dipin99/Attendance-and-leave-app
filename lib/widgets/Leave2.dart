import 'package:flutter/material.dart';

class Leave2 extends StatefulWidget {
  final String title;
  final String subtitle;

  Leave2(this.title,this.subtitle);

  @override
  _Leave2State createState() => _Leave2State();
}

class _Leave2State extends State<Leave2> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.grey[300],
      margin: EdgeInsets.all(12),
      child: Padding(
        padding: EdgeInsets.only(top: 4.0, left: 4.0, right: 4.0, bottom: 4.0),
        child: ExpansionTile(
          childrenPadding: EdgeInsets.only(bottom: 10.0),
          iconColor: Colors.black,
          backgroundColor: Colors.white,
          title: Text(
            widget.title+'\n'+widget.subtitle,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15
            ),
          ),
          children: [
            
            ListTile(
              isThreeLine: true,
              title: Text("CL/Contingency Leave",
                  style: TextStyle(fontSize: 20.0)),
              subtitle: Text("6.0 Remaining \nValid Till: 31/12/2021",
                  style: TextStyle(fontSize: 18.0)),
            ),
            ListTile(
              isThreeLine: true,
              title: Text("Optional Holiday", style: TextStyle(fontSize: 20.0)),
              subtitle: Text("3.0 Remaining\nValid Till:31/12/2021",
                  style: TextStyle(fontSize: 18.0)),
            ),
            ListTile(
              isThreeLine: true,
              title: Text("Special Privilege Leave",
                  style: TextStyle(fontSize: 20.0)),
              subtitle: Text("10.0 Remaining\nValid Till:31/12/2021",
                  style: TextStyle(fontSize: 18.0)),
            ),
          ],
        ),
      ),
    );
  }
}
