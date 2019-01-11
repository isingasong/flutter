import 'package:flutter/material.dart';

class SliderDemo0 extends StatefulWidget {
  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo0> {
  double _sliderValue = 0.0;
  double _sliderValue0 = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Slider(
            value: _sliderValue,
            onChanged: (value) {
              setState(() {
                _sliderValue = value;
              });
            },
            activeColor: Colors.blue,
            inactiveColor: Colors.grey,
            min: 0.0,
            max: 10.0,
          ),
          Text('SliderValue: ${_sliderValue.toInt()}'),
          SizedBox(
            height: 26.0,
          ),
          Slider(
            value: _sliderValue0,
            onChanged: (value) {
              setState(() {
                _sliderValue0 = value;
              });
            },
            activeColor: Colors.indigoAccent,
            inactiveColor: Colors.grey,
            min: 0.0,
            max: 100.0,
            divisions: 10,
            label: '${_sliderValue0.toInt()}',
          ),
        ],
      ),
    );
  }
}
