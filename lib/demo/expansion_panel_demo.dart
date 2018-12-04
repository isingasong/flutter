import 'package:flutter/material.dart';

class ExpansionPanelItem {
  final String headerText;
  final Widget body;
  bool isExpanded;

  ExpansionPanelItem(this.headerText, this.body, this.isExpanded);
}

class ExpansionPanelDemo extends StatefulWidget {
  @override
  _ExpansionPanelState createState() => _ExpansionPanelState();
}

class _ExpansionPanelState extends State<ExpansionPanelDemo> {
  List<ExpansionPanelItem> _expansionPanelItems;

  @override
  void initState() {
    super.initState();
    _expansionPanelItems = <ExpansionPanelItem>[
      ExpansionPanelItem(
        'Panel A',
        Container(
          padding: EdgeInsets.all(10.0),
          width: double.infinity,
          child: Text("this  is content for panel"),
        ),
        false,
      ),
      ExpansionPanelItem(
          'Panel B',
          Container(
            padding: EdgeInsets.all(10.0),
            width: double.infinity,
            child: Text("this  is content for panel"),
          ),
          false),
      ExpansionPanelItem(
          'Panel C',
          Container(
            padding: EdgeInsets.all(10.0),
            width: double.infinity,
            child: Text("this  is content for panel"),
          ),
          false),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpansionPanelDemo'),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ExpansionPanelList(
              expansionCallback: (int panelIndex, bool isExpande) {
                setState(() {
                  _expansionPanelItems[panelIndex].isExpanded = !isExpande;
                });
              },
              children: _expansionPanelItems.map((ExpansionPanelItem item) {
                return ExpansionPanel(
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return Container(
                        padding: EdgeInsets.all(10.0),
                        child: Text(item.headerText),
                      );
                    },
                    body: item.body,
                    isExpanded: item.isExpanded);
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
