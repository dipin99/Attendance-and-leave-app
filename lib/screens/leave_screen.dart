import 'dart:ui';

import 'package:flutter/material.dart';

import '../Shared/calendar.dart';


class ApplyLeaveScreen extends StatefulWidget {
  @override
  _ApplyLeaveScreenState createState() => _ApplyLeaveScreenState();
}

class _ApplyLeaveScreenState extends State<ApplyLeaveScreen> {
  @override
  bool _checked = false;
  String _chosenValue;
  String _chosenValue1;

  DateTime selectedDate = DateTime.now();

  /// This decides which day will be enabled
  /// This will be called every time while displaying day in calender.
  bool _decideWhichDayToEnable(DateTime day) {
    if ((day.isAfter(DateTime.now().subtract(Duration(days: 1))) &&
        day.isBefore(DateTime.now().add(Duration(days: 10))))) {
      return true;
    }
    return false;
  }

  _selectDate(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    assert(theme.platform != null);
    return buildMaterialDatePicker(context);
  }

  buildMaterialDatePicker(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
      initialEntryMode: DatePickerEntryMode.calendar,
      initialDatePickerMode: DatePickerMode.day,
      selectableDayPredicate: _decideWhichDayToEnable,
      helpText: 'Start Date',
      cancelText: 'Cancel',
      confirmText: 'Confirm',
      errorFormatText: 'Enter valid date',
      errorInvalidText: 'Enter date in valid range',
      fieldLabelText: 'Booking date',
      fieldHintText: 'Month/Date/Year',
      builder: (context, child) {
        return Theme(
          data: ThemeData.light(),
          child: child,
        );
      },
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Leave & Attendence',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.white,
                fontSize: 19,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 70,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Color.fromARGB(255, 12, 109, 230),
                margin: EdgeInsets.all(12),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 4.0, left: 4.0, right: 4.0, bottom: 4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          'Apply Leave',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Calender(),
            Divider(),
            buildContainer(
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RaisedButton(
                    onPressed: () => _selectDate(context),
                    child: Text(
                      'From Date*',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  Text(
                    '05/06/2021',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            buildContainer(
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RaisedButton(
                    onPressed: () => _selectDate(context),
                    child: Text(
                      'To Date*',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  Text(
                    '05/06/2021',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            buildContainer(
              DropdownButton<String>(
                focusColor: Colors.grey[300],
                value: _chosenValue1,
                //elevation: 5,
                style: TextStyle(color: Colors.black),
                iconEnabledColor: Colors.black,
                dropdownColor: Colors.grey[300],

                items: <String>[
                  'Cl/ Contigency Leave',
                  'Optional Holiday',
                  'Special Privelage Leave',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                      ),
                    ),
                  );
                }).toList(),
                hint: Text(
                  "Type of Leave",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                onChanged: (String value) {
                  setState(() {
                    _chosenValue1 = value;
                  });
                },
              ),
            ),
            CheckboxListTile(
              title: Text('Apply for Half-Day'),
              controlAffinity: ListTileControlAffinity.leading,
              value: _checked,
              onChanged: (bool value) {
                setState(() {
                  _checked = value;
                });
              },
            ),
            buildContainer(
              DropdownButton<String>(
                focusColor: Colors.grey[300],
                value: _chosenValue,
                //elevation: 5,
                style: TextStyle(color: Colors.black),
                iconEnabledColor: Colors.black,
                dropdownColor: Colors.grey[300],

                items: <String>[
                  'Reason 1',
                  'Reason 2',
                  'Reason 3',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                      ),
                    ),
                  );
                }).toList(),
                hint: Text(
                  "Select Reason",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                onChanged: (String value) {
                  setState(() {
                    _chosenValue = value;
                  });
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  child: Text("Cancel"),
                  onPressed: () {},
                ),
                ElevatedButton(
                  child: Text("Confirm"),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildContainer(Widget child) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.grey[300],
      border: Border.all(
        color: Colors.grey,
      ),
      borderRadius: BorderRadius.circular(15),
    ),
    height: 100,
    width: 450,
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(10),
    child: child,
  );
}
