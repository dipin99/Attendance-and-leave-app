import 'package:flutter/material.dart';


class Leave extends StatefulWidget {
  final String title;

  Leave(this.title);

  @override
  _LeaveState createState() => _LeaveState();
}

List<Widget> _buildExpansionTileChildren() => [
      
    ListTile(
          isThreeLine: true,
          title: Text("CL/Contingency Leave",
              style: TextStyle(fontSize: 13.0)),
          subtitle: Text("6.0 Remaining \nValid Till: 31/12/2021",
              style: TextStyle(fontSize: 10.0)),
          trailing: FlatButton(
            child: Text(
              'APPLY',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.blue,
              ),
            ),
            onPressed: () {},
          ),
        ),
       ListTile(
          isThreeLine: true,
          title: Text("Optional Holiday",
              style: TextStyle(fontSize: 13.0)),
          subtitle: Text("3.0 Remaining\nValid Till:31/12/2021",
              style: TextStyle(fontSize: 10.0)),
          trailing: FlatButton(
            child: Text(
              'APPLY',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.blue,
              ),
            ),
            onPressed: () {},
          ),
        ),
      
      ListTile(
          isThreeLine: true,
          title: Text("Special Privilege Leave",
              style: TextStyle(fontSize: 15.0)),
          subtitle: Text("10.0 Remaining\nValid Till:31/12/2021",
              style: TextStyle(fontSize: 14.0)),
          trailing: FlatButton(
            child: Text(
              'APPLY',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.blue,
              ),
             
            ),
            onPressed: () {},
          ),
        ),
      
       ListTile(
        title: Text(
          "See More",
          style: TextStyle(color: Colors.blue, fontSize: 12.0),
        ),
      )
      
    ];

class _LeaveState extends State<Leave> {
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