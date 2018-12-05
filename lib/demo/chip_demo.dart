import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  List<String> _tags = ['Apple', 'Banana', 'Lemon'];
  String _actions = 'Nothing';
  List<String> _selected = [];
  String _choice = 'Lemon';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Scrollbar(
        child: Container(
          child: ListView(
            children: <Widget>[
              Wrap(
                spacing: 10.0,
                runSpacing: 10.0,
                children: <Widget>[
                  Chip(label: Text('Chip')),
                  Chip(
                    label: Text('MaxChip'),
                    backgroundColor: Colors.teal,
                  ),
                  Chip(
                    label: Text('MaxChip'),
                    avatar: CircleAvatar(
                      backgroundColor: Colors.red,
                      child: Text('King'),
                    ),
                  ),
                  Chip(
                    label: Text('Another'),
                    avatar: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://resources.ninghao.net/images/wanghao.jpg'),
                    ),
                  ),
                  Chip(
                    label: Text('City'),
                    onDeleted: () {},
                    deleteIcon: Icon(Icons.delete),
                    deleteIconColor: Colors.red,
                    deleteButtonTooltipMessage: 'Remove this tag',
                  ),
                  Divider(
                    color: Colors.red,
                    height: 20.0,

//                  indent: 20.0, //  左边缩进
                  ),
                  Container(
                    width: double.infinity,
                    child: Text('FilterChip value is $_selected '),
                  ),
                  Wrap(
                    spacing: 10.0,
                    children: _tags.map((tag) {
                      return FilterChip(
                        label: Text(tag),
                        selected: _selected.contains(tag),
                        onSelected: (value) {
                          setState(() {
                            if (_selected.contains(tag)) {
                              _selected.remove(tag);
                            } else {
                              _selected.add(tag);
                            }
                          });
                        },
                      );
                    }).toList(),
                  ),
                  Divider(
                    color: Colors.red,
                    height: 20.0,
//                  indent: 20.0, //  左边缩进
                  ),
                  Container(
                    width: double.infinity,
                    child: Text('ActionChip value is $_actions '),
                  ),
                  Wrap(
                    spacing: 10.0,
                    children: _tags.map((tag) {
                      return ActionChip(
                        label: Text(tag),
                        onPressed: () {
                          setState(() {
                            _actions = tag;
                          });
                        },
                      );
                    }).toList(),
                  ),
                  Divider(
                    color: Colors.red,
                    height: 20.0,
//                  indent: 20.0, //  左边缩进
                  ),
                  Wrap(
                    spacing: 10.0,
                    children: _tags.map((tag) {
                      return ActionChip(
                        label: Text(tag),
                        onPressed: () {
                          setState(() {
                            _actions = tag;
                          });
                        },
                      );
                    }).toList(),
                  ),
                  Divider(
                    color: Colors.red,
                    height: 10.0,
//                  indent: 20.0, //  左边缩进
                  ),
                  Container(
                    width: double.infinity,
                    child: Text('ChoiceChip value is $_choice'),
                  ),
                  Wrap(
                    spacing: 10.0,
                    children: _tags.map((tag) {
                      return FilterChip(
                        label: Text(
                          tag,
                          style: TextStyle(color: Colors.yellowAccent),
                        ),
                        selected: _choice == tag,
                        selectedColor: Colors.black,
                        onSelected: (value) {
                          setState(() {
                            _choice = tag;
                          });
                        },
                      );
                    }).toList(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.restore),
          onPressed: () {
            setState(() {
              _tags = ['Apple', 'Banana', 'Lemon'];
              _selected = [];
              _choice = 'Lemon';
            });
          }),
    );
  }
}
