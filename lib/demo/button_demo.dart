import 'package:flutter/material.dart';
class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget _flatButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          onPressed: () {},
          child: Text('Button'),
          textColor: Colors.blue[500],
          splashColor: Colors.teal,
          elevation: 10.0,
          color: Colors.grey[400],
        ),
        SizedBox(
          width: 20.0,
        ),
        RaisedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text('Button'),
          splashColor: Colors.teal,
          textColor: Colors.blue[500],
          elevation: 15.0,
          color: Colors.grey[400],
        )
      ],
    );

    final Widget _flatThemeButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
            data: Theme.of(context).copyWith(
                buttonTheme: ButtonThemeData(
                  textTheme: ButtonTextTheme.primary,
                  shape: StadiumBorder(),
                )),
            child: _flatButton),
      ],
    );
    final Widget _flatThemeButtonWithBorder = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
            data: Theme.of(context).copyWith(
                buttonTheme: ButtonThemeData(
                  textTheme: ButtonTextTheme.primary,
                  shape: StadiumBorder(),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlineButton(
                  onPressed: () {},
                  child: Text('Button'),
                  textColor: Colors.blue[500],
                  splashColor: Colors.teal,
                  borderSide: BorderSide(width: 2, color: Colors.deepPurple),
                  color: Colors.grey[400],
                  highlightedBorderColor: Colors.red,
                ),
                SizedBox(
                  width: 20.0,
                ),
                OutlineButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  label: Text('Button'),
                  splashColor: Colors.teal,
                  textColor: Colors.blue[500],
                  borderSide: BorderSide(width: 2, color: Colors.deepPurple),
                  highlightedBorderColor: Colors.red,
                  color: Colors.grey[400],
                )
              ],
            )),
      ],
    );

    final Widget _simpelOutlineButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 130.0,
          child: OutlineButton(
            onPressed: () {},
            child: Text('Button'),
            textColor: Colors.blue[500],
            splashColor: Colors.teal,
            borderSide: BorderSide(width: 2, color: Colors.deepPurple),
            color: Colors.grey[400],
            highlightedBorderColor: Colors.red,
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        OutlineButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text('Button'),
          splashColor: Colors.teal,
          textColor: Colors.blue[500],
          borderSide: BorderSide(width: 2, color: Colors.deepPurple),
          highlightedBorderColor: Colors.red,
          color: Colors.grey[400],
        )
      ],
    );
    // TODO: implement build
    final Widget _expandedButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: OutlineButton(
            onPressed: () {},
            child: Text('Button'),
            textColor: Colors.blue[500],
            splashColor: Colors.teal,
            borderSide: BorderSide(width: 2, color: Colors.deepPurple),
            color: Colors.grey[400],
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        Expanded(
            flex: 2,
            child: OutlineButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text('Button'),
              splashColor: Colors.teal,
              textColor: Colors.blue[500],
              borderSide: BorderSide(width: 2, color: Colors.deepPurple),
              highlightedBorderColor: Colors.red,
              color: Colors.grey[400],
            ))
      ],
    );

    final Widget _buttonBar = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
              buttonTheme: ButtonThemeData(
                  padding: EdgeInsets.symmetric(horizontal: 40.0))),
          child: ButtonBar(
            children: <Widget>[
              OutlineButton(
                onPressed: () {},
                child: Text('Button'),
                textColor: Colors.blue[500],
                splashColor: Colors.teal,
                borderSide: BorderSide(width: 2, color: Colors.deepPurple),
                color: Colors.grey[400],
              ),
              OutlineButton(
                onPressed: () {},
                child: Text('Button'),
                textColor: Colors.blue[500],
                splashColor: Colors.teal,
                borderSide: BorderSide(width: 2, color: Colors.deepPurple),
                color: Colors.grey[400],
              ),
            ],
          ),
        )
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _flatButton,
            _flatThemeButton,
            _flatThemeButtonWithBorder,
            _simpelOutlineButton,
            _expandedButton,
            _buttonBar
          ],
        ),
      ),
    );
  }
}