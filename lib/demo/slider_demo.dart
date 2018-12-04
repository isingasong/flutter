import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double _sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SliderDemo'),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
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
                inactiveColor: Colors.teal.withOpacity(0.6),
                  max: 10.0,
                  min: 0.0,
                  divisions: 10,
                  label: '${_sliderValue.toInt()}',
                ),

              ],
            ),
            SizedBox(
              height: 32.0,
            ),
            Text('SliderValue:${_sliderValue.toInt()}')
          ],
        ),
      ),
    );
  }
}
