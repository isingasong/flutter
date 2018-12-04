import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';

class DateTimeDemo extends StatefulWidget {
  @override
  _DateTimeDemoState createState() => _DateTimeDemoState();
}

class _DateTimeDemoState extends State<DateTimeDemo> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selecteTime = TimeOfDay.now();

  Future<void> _selecteDate() async {
    final DateTime date = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1900),
        lastDate: DateTime(2100));

    if (date == null) return;
    setState(() {
      selectedDate = date;
    });
  }

  Future<void> _selecteTime() async {
    final TimeOfDay time =
        await showTimePicker(context: context, initialTime: selecteTime);
    if (time == null) return;
    setState(() {
      selecteTime = time;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DateTimeDemo'),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: _selecteDate,
                  child: Row(
                    children: <Widget>[
                      Text(DateFormat.yMMMMd().format(selectedDate)),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
                InkWell(
                  onTap: _selecteTime,
                  child: Row(
                    children: <Widget>[
                      Text(selecteTime.format(context)),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
