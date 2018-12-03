import 'package:flutter/material.dart';

class MaterialDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialDemo'),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(
              title: 'FloatingActionButton', page: FlatingActionButtonDemo()),
          ListItem(title: 'ButtonDemo', page: ButtonDemo()),
        ],
      ),
    );
  }
}

class FlatingActionButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget _floatingActopmButtpm = FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.add),
      backgroundColor: Colors.blue,
      elevation: 0.0,
    );

    final Widget _floatingActionButtonExtende = FloatingActionButton.extended(
        onPressed: () {}, icon: Icon(Icons.add), label: Text('Add'));

    return Scaffold(
      appBar: AppBar(
        title: Text('FlatingActionButton'),
        elevation: 0.0,
      ),
      floatingActionButton: _floatingActopmButtpm,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
        ),
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}

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
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _flatButton,
            _flatThemeButton,
            _flatThemeButtonWithBorder
          ],
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({
    this.title,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}
