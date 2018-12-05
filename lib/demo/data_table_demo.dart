import 'package:flutter/material.dart';
import '../model/post.dart';

class DataTableDemo extends StatefulWidget {
  @override
  _DataTableState createState() => _DataTableState();
}

class _DataTableState extends State<DataTableDemo> {
  int _sortColumnIndex;
  bool _sortAscending = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataTableDemo'),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            DataTable(
                sortAscending: _sortAscending,
                sortColumnIndex: _sortColumnIndex,
                columns: [
                  DataColumn(
                      label: Text('Title'),
                      onSort: (int index, bool ascending) {
                        setState(() {
                          _sortAscending = ascending;
                          _sortColumnIndex = index;
                        });

                        posts.sort((a, b) {
                          if (!ascending) {
                            final c = a;
                            a = b;
                            b = c;
                          }
                          return a.title.length.compareTo(b.title.length);
                        });
                      }),
                  DataColumn(label: Text('Author')),
                  DataColumn(label: Text('Avatar')),
                ],
                rows: posts.map((post) {
                  return DataRow(
//                    selected: post.selected,
                      onSelectChanged: (bool value){
                      setState(() {
//                        if(post.selected != value) {
//                          post.selected = value;
//                        }
                      });
                      },
                      cells: [
                    DataCell(Text(post.title)),
                    DataCell(Text(post.author)),
                    DataCell(Image.network(post.imageUrl))
                  ]);
                }).toList())
          ],
        ),
      ),
    );
  }
}
