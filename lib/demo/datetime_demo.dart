import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';

class DateTimeDemo extends StatefulWidget {
  @override
  _DateTimeDemoState createState() => _DateTimeDemoState();
}

class _DateTimeDemoState extends State<DateTimeDemo> {
  DateTime _dateTime = DateTime.now();
  TimeOfDay _timeOfDay = TimeOfDay(hour: 11, minute: 11);

  Future<void> _selectedDate() async {
    final DateTime date = await showDatePicker(
        context: context,
        initialDate: _dateTime,
        firstDate: DateTime(1900),
        lastDate: DateTime(2100));
    if (date == null) return;
    setState(() {
      _dateTime = date;
    });
  }

  Future<void> _seletedTime() async {
    final TimeOfDay time = await showTimePicker(
      context: context,
      initialTime: _timeOfDay,
    );
    if (time == null) return;
    setState(() {
      _timeOfDay = time;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        InkWell(
          onTap: _selectedDate,
          child: Row(
            children: <Widget>[
              Text(DateFormat.yMMMMEEEEd().format(_dateTime)),
              Icon(Icons.arrow_drop_down),
            ],
          ),
        ),
        InkWell(
          onTap: _seletedTime,
          child: Row(
            children: <Widget>[
              Text(_timeOfDay.format(context)),
              Icon(Icons.arrow_drop_down),
            ],
          ),
        ),
      ],
    );
  }
}
