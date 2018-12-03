import 'package:flutter/material.dart';

class ForeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Theme(
          data: Theme.of(context).copyWith(primaryColor: Colors.teal),
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                LoginForm(),
              ],
            ),
          )),
    );
  }
}

class LoginForm extends StatefulWidget {
  LoginFormState createState() => LoginFormState();
}

class LoginFormState extends State<LoginForm> {
  final loginFormKey = GlobalKey<FormState>();
  String username, password;
  bool validateState = false;

  void onLoginFormSubmit() {
    if (loginFormKey.currentState.validate()) {
      loginFormKey.currentState.save();
      debugPrint('Username: $username');
      debugPrint('Password: $password');
      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text('Logining...',),
      ));
    } else {
      setState(() {
        validateState = true;
      });
    }
  }

  String validateUsername(value) {
    if (value.isEmpty) {
      return 'Username is required';
    }
    return null;
  }

  String validatePassword(value) {
    if (value.isEmpty) {
      return 'Password is required';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
        key: loginFormKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration:
                  InputDecoration(labelText: 'Username', helperText: ''),
              validator: validateUsername,
              autovalidate: validateState,
              onSaved: (value) {
                username = value;
              },
            ),
            TextFormField(
              obscureText: true,
              decoration:
                  InputDecoration(labelText: 'Password', helperText: ''),
              validator: validatePassword,
              autovalidate: validateState,
              onSaved: (value) {
                password = value;
              },
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              width: double.infinity,
              child: RaisedButton(
                  color: Colors.blue,
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                  elevation: 0.0,
                  onPressed: () {
                    onLoginFormSubmit();
                  }),
              color: Colors.blue,
            ),
          ],
        ));
  }
}

class TextFiledDemo extends StatefulWidget {
//  State<StatefulWidget> createState() {
//    // TODO: implement createState
//    return TextFeildState();
  @override
  TextFeildState createState() => TextFeildState();
}

class TextFeildState extends State<TextFiledDemo> {
  final textFeildController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    textFeildController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textFeildController.addListener(() {
      debugPrint('input text: ${textFeildController.text}');
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextField(
      controller: textFeildController,
      onSubmitted: (value) {
        debugPrint('submit : $value');
      },
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        labelText: 'name',
        hintText: 'Please Input Your Name',
        border: OutlineInputBorder(),
        filled: true,
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Theme.of(context).accentColor,
    );
  }
}
