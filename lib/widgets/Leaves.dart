import 'package:flutter/material.dart';
import 'package:leave/screens/leave_screen.dart';

class Leave extends StatefulWidget {
  final String title;

  Leave(this.title);

  @override
  _LeaveState createState() => _LeaveState();
}

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
        padding: EdgeInsets.only(top: 4.0, left: 4.0, right: 4.0, bottom: 4.0),
        child: ExpansionTile(
          childrenPadding: EdgeInsets.only(bottom: 10.0),
          iconColor: Colors.black,
          backgroundColor: Colors.white,
          title: Text(
            widget.title,
            style: TextStyle(color: Colors.black),
          ),
          children: [
            ListTile(
              isThreeLine: true,
              title: Text("CL/Contingency Leave",
                  style: TextStyle(fontSize: 20.0)),
              subtitle: Text("6.0 Remaining \nValid Till: 31/12/2021",
                  style: TextStyle(fontSize: 18.0)),
              trailing: FlatButton(
                child: Text(
                  'APPLY',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.blue,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ApplyLeaveScreen()),
                  );
                },
              ),
            ),
            ListTile(
              isThreeLine: true,
              title: Text("Optional Holiday", style: TextStyle(fontSize: 20.0)),
              subtitle: Text("3.0 Remaining\nValid Till:31/12/2021",
                  style: TextStyle(fontSize: 18.0)),
              trailing: FlatButton(
                child: Text(
                  'APPLY',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.blue,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ApplyLeaveScreen()),
                  );
                },
              ),
            ),
            ListTile(
              isThreeLine: true,
              title: Text("Special Privilege Leave",
                  style: TextStyle(fontSize: 20.0)),
              subtitle: Text("10.0 Remaining\nValid Till:31/12/2021",
                  style: TextStyle(fontSize: 18.0)),
              trailing: FlatButton(
                child: Text(
                  'APPLY',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.blue,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ApplyLeaveScreen()),
                  );
                },
              ),
            ),
            TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                  overlayColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered))
                        return Colors.blue.withOpacity(0.04);
                      if (states.contains(MaterialState.focused) ||
                          states.contains(MaterialState.pressed))
                        return Colors.blue.withOpacity(0.12);
                      return null;
                    },
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'See More',
                  textAlign: TextAlign.right,
                ))
          ],
        ),
      ),
    );
  }
}
