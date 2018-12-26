import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  final loginFormKey = GlobalKey<FormState>();
  String account, password;
  bool autoValidate = false;

  void _saveLoginInformation() {
    if (loginFormKey.currentState.validate()) {
      loginFormKey.currentState.save();
      debugPrint('account : $account');
      debugPrint('password : $password');
      if (account == 'max' && password == '123456') {
        Scaffold.of(context)
            .showSnackBar(SnackBar(content: Text('Logining.......')));
        Navigator.pushNamed(context, '/');
      } else {
        Scaffold.of(context).showSnackBar(
            SnackBar(content: Text('account or password is wrong ')));
      }
    } else {
      setState(() {
        autoValidate = true;
      });
    }
  }

  String _validatorAccount(String value) {
    if (value.isEmpty) {
      return 'Account is required';
    }
    return null;
  }

  String _validatorPassword(String value) {
    if (value.isEmpty) {
      return 'Password is required';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: loginFormKey,
        child: Container(
            child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Account', helperText: ''),
              onSaved: (value) {
                account = value;
              },
              validator: _validatorAccount,
              autovalidate: autoValidate,
            ),
            TextFormField(
              obscureText: true,
              decoration:
                  InputDecoration(labelText: 'Password', helperText: ''),
              onSaved: (value) {
                password = value;
              },
              validator: _validatorPassword,
              autovalidate: autoValidate,
            ),
            SizedBox(
              height: 36.0,
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
                    _saveLoginInformation();
//                Navigator.pushNamed(context, '/');
                  }),
            ),
          ],
        )));
  }
}
