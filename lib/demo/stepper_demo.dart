import 'package:flutter/material.dart';

class StepperDemo extends StatefulWidget {
  @override
  _StepperDemoState createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StepperDemo'),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Theme(
              data: Theme.of(context).copyWith(
                primaryColor: Colors.black,
              ),
              child: Stepper(
                currentStep: _currentStep,
                  onStepTapped: (int step){
                  setState(() {
                    _currentStep = step;
                  });
                  },
                  onStepCancel: () {
                  setState(() {
                    _currentStep > 0 ? _currentStep -= 1 : _currentStep = 0;
                  });
                  },
                  onStepContinue: () {
                  setState(() {
                    _currentStep < 2 ? _currentStep += 1 : _currentStep = 0;
                  });
                  },

                  steps: [
                Step(
                    title: Text('Login'),
                    subtitle: Text('Login First'),
                    content: Text(
                        'Keep good men company and you shall be of the number.'),
                    isActive: _currentStep == 0),
                Step(
                    title: Text('Plan'),
                    subtitle: Text('Login Second'),
                    content:
                        Text('Kings go mad, and the people suffer for it.'),
                    isActive: _currentStep == 1),
                Step(
                    title: Text('Register'),
                    subtitle: Text('Register Third'),
                    content: Text(
                        'Dont aim for success if you want it; just do what you love and believe in, and it will come naturally.'),
                    isActive: _currentStep == 2),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
